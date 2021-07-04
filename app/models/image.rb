class Image < ApplicationRecord
  belongs_to :highlight
  has_one_attached :img
end
