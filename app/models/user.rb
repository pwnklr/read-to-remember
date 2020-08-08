class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :highlights, dependent: :destroy
  acts_as_favoritor

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
    highlights.where(display_on: Date.today)
  end
end
