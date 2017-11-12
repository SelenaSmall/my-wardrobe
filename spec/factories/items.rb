FactoryGirl.define do
  factory :item do
    name { Faker::Lorem.word }
    image { Faker::Lorem.word }
  end
end
