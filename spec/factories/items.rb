FactoryGirl.define do
  factory :item do
    name { Faker::Lorem.word }
  end
end
