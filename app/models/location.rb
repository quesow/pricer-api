class Location < ApplicationRecord
  has_many :location_group_locations
  has_many :location_groups, :through => :location_group_locations

  has_many :countries, through: :location_groups, source: :country

  validates :name, presence: true

  scope :by_country_code, -> (country_code) { joins(:countries).where('countries.country_code = ?', country_code) }
end
