FactoryBot.define do
  factory :restaurant do
    name { Faker::Company.name }
    address { Faker::Address.street_address }
  end
end
