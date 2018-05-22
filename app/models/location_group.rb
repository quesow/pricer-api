class LocationGroup < ApplicationRecord
  belongs_to :panel_provider
  belongs_to :country
  has_many :location_group_locations
  has_many :locations, :through => :location_group_locations

  validates :country, presence: true
  validates :panel_provider, presence: true
  validates :name, presence: true
end
