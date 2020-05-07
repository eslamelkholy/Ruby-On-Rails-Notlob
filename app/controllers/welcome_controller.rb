class WelcomeController < ApplicationController
  def index
    @orderAll = Order.all.order(:created_at).limit(10).reverse 
    @friends =Friendship.where(user_id:current_user.id)
    @friendsOrders =[]
    @friends.each do |friend|
      @friendsOrders << Order.where(user_id: friend.friend_id)
    end


  end
end
