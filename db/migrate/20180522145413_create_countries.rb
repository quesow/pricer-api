class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :country_code, null: false, index: true
      t.belongs_to :panel_provider, index: true

      t.timestamps
    end
  end
end
