class Group < ApplicationRecord
    belongs_to :user
    has_many :group_friends
    has_many :users, through: :group_friends
end
