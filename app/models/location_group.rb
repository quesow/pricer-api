class LocationGroup < ApplicationRecord
  belongs_to :panel_provider
  belongs_to :country
  has_many :location_group_locations
  has_many :locations, :through => :location_group_locations
end
