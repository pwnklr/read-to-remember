class Source < ApplicationRecord
  belongs_to :author
  has_many :highlights, dependent: :destroy
end
