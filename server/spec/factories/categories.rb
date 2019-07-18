FactoryBot.define do
  factory :category do
    name { Faker::App.name }
    description { Faker::Lorem.paragraph }
  end
end
