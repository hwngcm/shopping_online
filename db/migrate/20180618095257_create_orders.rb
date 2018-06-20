class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.float :total_price
      t.text :note
      t.string :payment
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
