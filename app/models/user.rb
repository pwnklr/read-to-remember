class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,
         :omniauth_providers => [:amazon]

  has_many :highlights, dependent: :destroy
  has_many :sources, dependent: :destroy
  has_one :kindle, dependent: :destroy
  acts_as_favoritor

  def self.from_omniauth(auth)
    user_params = auth.slice("provider", "uid")
    user_params[:email] = auth.info.email
    user_params = user_params.to_h
    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end
    return user
  end

  def self.send_daily_highlights
    User.all.each do |user|
      UserMailer.daily_highlights(user).deliver_now!
    end
  end

  def self.set_daily_flashcards
    User.all.each do |user|
      daily_flashcards = user.generate_daily_highlights
      daily_flashcards.each do |flashcard|
        flashcard.display_on = Date.today
        flashcard.save
      end
    end
  end

  def generate_daily_highlights
    highlights.sample(7)
  end

  def flashcards
    highlights.where(display_on: Date.today).includes(:source).order(:id)
  end
end
