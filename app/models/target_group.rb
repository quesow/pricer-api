class TargetGroup < ApplicationRecord
  belongs_to :parent, class_name: TargetGroup
  has_one :child, class_name: TargetGroup, foreign_key: :parent_id
  belongs_to :panel_provider
  has_many :countries, through: :panel_provider

end
