class CreateGroupFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :group_friends do |t|
      t.integer :group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
