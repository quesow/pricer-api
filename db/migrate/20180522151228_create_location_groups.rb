class CreateLocationGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :location_groups do |t|
      t.string :name, null: false
      t.belongs_to :country, index: true, null: false
      t.integer :panel_provider_id, null: false

      t.timestamps
    end
  end
end
