class WelcomeController < ApplicationController
  def index
    @orderAll = Order.all.order(:created_at).limit(10).reverse 
    @friendsOrders=Order.where.not(user_id: current_user.id)


  end
end
