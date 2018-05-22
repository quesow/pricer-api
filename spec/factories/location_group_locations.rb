FactoryBot.define do
  factory :location_group_location do
    association :location
    association :location_group
  end
end
