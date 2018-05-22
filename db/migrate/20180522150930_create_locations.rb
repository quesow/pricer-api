class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.integer :external_id
      t.string :secret_code
      t.belongs_to :panel_provider, index: true
      t.belongs_to :country, index: true

      t.timestamps
    end
  end
end
