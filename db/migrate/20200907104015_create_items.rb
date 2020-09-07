class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :store, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :item_type, null: false
      t.integer :price, null: false
      t.date :post_data, null: false
      t.string :leaflet_image
      t.timestamps
    end
  end
end
