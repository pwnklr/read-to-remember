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

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.amazon_data"] && session["devise.amazon_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.provider = auth.provider
      user.uid = auth.uid
      user.password = Devise.friendly_token[0,20]
    end
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
    highlights.where(display_on: Date.today).order(:id)
  end
end
