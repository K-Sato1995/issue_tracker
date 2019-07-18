FactoryBot.define do
  factory :progress do
    description { Faker::Lorem.paragraph }
    spent_time { 10 }

    association :issue, factory: :issue
  end
end
