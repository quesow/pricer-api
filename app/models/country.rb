class Country < ApplicationRecord
  has_many :location_groups, dependent: :destroy
  belongs_to :panel_provider

end
