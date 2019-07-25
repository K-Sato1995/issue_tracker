FactoryBot.define do
  factory :project do
    name { Faker::App.name }
    description { Faker::Lorem.paragraph }

    association :user, factory: :user
  end
end
