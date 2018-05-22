class Country < ApplicationRecord
  has_many :location_groups, dependent: :destroy
  # has_many :target_groups, :through => :panel_providers
  has_many :target_groups, through: :panel_providers, source: :target_group

  validates :country_code, presence: true
end
