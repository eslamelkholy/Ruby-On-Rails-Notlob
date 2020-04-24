class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :order_friends
  has_many :orders, through: :order_friends
  has_many :orders, dependent: :destroy
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :groups
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
