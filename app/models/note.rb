class Note < ApplicationRecord
  belongs_to :highlight
  validates :content, presence: :true, length: { in: 1..1000 }
end
