class CreateLocationGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :location_groups do |t|
      t.string :name, null: false
      t.integer :country_id, null: false
      t.integer :panel_provider_id, null: false

      t.timestamps
    end
  end
end
