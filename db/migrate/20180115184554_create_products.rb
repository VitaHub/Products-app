class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name, null: false
      t.string :image, null: false
      t.float :score, null: false
      t.float :price, null: false, scale: 2
      t.string :url, null: false

      t.timestamps
    end
  end
end
