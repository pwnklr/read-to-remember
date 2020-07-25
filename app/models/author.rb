class Author < ApplicationRecord
  has_many :sources, dependent: :destroy
  validates :first_name, :last_name, presence: :true, length: { in: 2..30 }, format: { with: /\A[a-zA-Z]+\z/ }
end
