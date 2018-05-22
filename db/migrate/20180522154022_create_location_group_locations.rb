class CreateLocationGroupLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :location_group_locations do |t|
      t.belongs_to :location, index: true
      t.belongs_to :location_group, index: true

      t.timestamps
    end
  end
end
