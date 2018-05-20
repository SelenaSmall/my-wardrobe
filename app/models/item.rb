class Item < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :looks

  mount_uploader :image, ImageUploader
end
