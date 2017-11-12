class Tag < ApplicationRecord
  has_and_belongs_to_many :items

  # def find_or_create_by_name(name)
  #   find_or_create_by(name: name)
  # end
end
