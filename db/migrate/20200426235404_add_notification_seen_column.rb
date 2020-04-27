class AddNotificationSeenColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :order_friends , :seen ,:boolean, :default => false
  end
end
