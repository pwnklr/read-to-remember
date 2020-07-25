class Source < ApplicationRecord
  belongs_to :author
  has_many :highlights, dependent: :destroy
  has_one_attached :photo
  validates :title, :publishing_year, :type, presence: :true
  validates :type, inclusion: { in: %w(book article) }
end
