class Source < ApplicationRecord
  belongs_to :author
  belongs_to :user
  has_many :highlights, dependent: :destroy
  has_one_attached :photo
  validates :title, :category, presence: :true
  validates :category, inclusion: { in: %w(book article) }
end
