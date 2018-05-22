class TargetGroup < ApplicationRecord
  belongs_to :parent, class_name: 'TargetGroup', optional: true
  # has_one :child, class_name: 'TargetGroup', foreign_key: :parent_id
  has_many :countries, through: :panel_providers, source: :country


  validates :name, presence: true

  # accepts_nested_attributes_for :child, allow_destroy: true
  scope :by_country_code, -> (country_code) { joins(:countries).where('countries.country_code = ?', country_code) }
  scope :root, -> { where(parent_id: nil) }
end
