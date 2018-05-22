FactoryBot.define do
  factory :panel_provider do
    code { Faker::Lorem.word }
    association :target_group
    association :country
   end
end
