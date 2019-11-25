class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :title
      t.text :details
      t.string :material_category
      t.string :location
      t.string :picture
      t.integer :price_per_day
      t.references :owner, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
