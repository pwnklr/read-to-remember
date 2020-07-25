class Source < ApplicationRecord
  belongs_to :author
  has_many :highlights, dependent: :destroy
  has_one_attached :photo
  validates :title, :category, presence: :true
  validates :category, inclusion: { in: %w(book article) }
end
