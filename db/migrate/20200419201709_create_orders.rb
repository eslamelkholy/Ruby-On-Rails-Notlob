class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :type
      t.string :state
      t.integer :restaurant_id
      t.integer :cat_id
      t.integer :user_id

      t.timestamps
    end
  end
end
