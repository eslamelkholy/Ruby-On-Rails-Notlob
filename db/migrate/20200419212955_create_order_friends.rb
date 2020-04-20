class CreateOrderFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :order_friends do |t|
      t.integer :order_id
      t.integer :user_id

      t.timestamps
    end
  end
end
