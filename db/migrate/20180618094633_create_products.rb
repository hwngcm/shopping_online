class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.float :price
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
