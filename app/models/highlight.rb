class Highlight < ApplicationRecord
  belongs_to :user
  belongs_to :source
  has_one :note, dependent: :destroy
  validates :content, :page, :favorite, presence: :true
  acts_as_taggable_on :tags
end
