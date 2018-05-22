class CreatePanelProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :panel_providers do |t|
      t.string :code, null: false

      t.timestamps
    end

  end
end
