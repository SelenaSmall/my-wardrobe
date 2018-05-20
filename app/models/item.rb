class Item < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :tags

  mount_uploader :image, ImageUploader
end
