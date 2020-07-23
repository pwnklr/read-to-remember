class Highlight < ApplicationRecord
  belongs_to :user
  belongs_to :source
  has_one :note, dependent: :destroy
end
