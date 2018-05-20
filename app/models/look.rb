class Look < ApplicationRecord
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :items
end