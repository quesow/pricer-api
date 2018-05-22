class PanelProvider < ApplicationRecord
  has_many :target_group, dependent: :destroy
  has_many :countries, dependent: :destroy
  # has_many :location_groups, dependent: :destroy
end
