class Order < ApplicationRecord
    belongs_to :user, :class_name => "User"
    has_many :order_friends
    has_many :users, through: :order_friends
    has_one_attached :picture
end
