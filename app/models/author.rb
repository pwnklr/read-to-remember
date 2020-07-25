class Author < ApplicationRecord
  has_many :sources, dependent: :destroy
  validates :name, presence: :true, length: { in: 2..70 }
end
