class CreateTargetGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :target_groups do |t|
      t.string :name, null: false
      t.integer :external_id
      t.integer :parent_id, index: true
      t.string :secret_code
      t.belongs_to :panel_provider, index: true

      t.timestamps
    end
  end
end
