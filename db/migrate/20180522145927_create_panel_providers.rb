class CreatePanelProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :panel_providers do |t|
      t.string :code, null: false
      t.belongs_to :country, index: true
      t.belongs_to :target_group, index: true

      t.timestamps
    end

  end
end
