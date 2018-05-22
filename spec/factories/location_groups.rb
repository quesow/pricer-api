FactoryBot.define do
  factory :location_group do
    name { Faker::Lorem.word }
    association :country
    association :panel_provider
    # association :location_group_location
    # association :location
  end
end
