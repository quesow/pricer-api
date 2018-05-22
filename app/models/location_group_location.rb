class LocationGroupLocation < ApplicationRecord
  belongs_to :location
  belongs_to :location_group

  validates :location, presence: true
  validates :location_group, presence: true
end
