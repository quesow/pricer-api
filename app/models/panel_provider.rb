class PanelProvider < ApplicationRecord
  belongs_to :target_group
  belongs_to :country

  validates :code, presence: true
end
