FactoryBot.define do
  factory :issue do
    title { Faker::App.name }
    description { Faker::Lorem.paragraph }
    status { 0 }
    priority { 0 }
    deadline { Time.now }

    association :category, factory: :category
  end
end
