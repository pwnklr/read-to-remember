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

  def generate_daily_highlights
    daily_highlights = []
    while daily_highlights < 7 do
      daily_highlights <<  highlights.sample
      daily_highlights.uniq!
    end
    daily_highlights
  end
end
