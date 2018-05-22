class Location < ApplicationRecord
  has_many :location_group_locations
  has_many :location_groups, :through => :location_group_locations
end
