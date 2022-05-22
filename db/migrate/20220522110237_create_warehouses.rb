class CreateWarehouses < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouses do |t|
      t.string :name
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
