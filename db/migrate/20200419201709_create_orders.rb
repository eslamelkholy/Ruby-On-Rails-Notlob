class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :type
      t.string :state
      t.string :restaurant
      t.integer :cat_id
      t.integer :user_id
      t.blob :picture

      t.timestamps
    end
  end
end
