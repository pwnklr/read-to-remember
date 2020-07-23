class Author < ApplicationRecord
  has_many :sources, dependent: :destroy
end
