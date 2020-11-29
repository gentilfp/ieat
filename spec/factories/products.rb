FactoryBot.define do
  factory :product do
    restaurant
    name { Faker::Games::Pokemon.name }
    value { rand(100) }
  end
end
