class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :store_type, null: false
      t.string :address, null:false
      t.integer :prefecture, null: false
      t.string :city, null: false
      t.string :village
      t.string :business_hours, null: false
      t.integer :rest_day, null: false
      t.timestamps
    end
  end
end
