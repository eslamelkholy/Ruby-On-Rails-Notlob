class OrderFriendsController < ApplicationController
  before_action :set_order_friend, only: [:show, :edit, :update, :destroy]

  # GET /order_friends
  # GET /order_friends.json
  def index
    @order_friends = OrderFriend.all
  end

  # GET /order_friends/1
  # GET /order_friends/1.json
  def show
  end

  # GET /order_friends/new
  def new
    @order_friend = OrderFriend.new
  end

  # GET /order_friends/1/edit
  def edit
  end

  # POST /order_friends
  # POST /order_friends.json
  def create
    @order_friend = OrderFriend.new(order_friend_params)

    respond_to do |format|
      if @order_friend.save
        format.html { redirect_to @order_friend, notice: 'Order friend was successfully created.' }
        format.json { render :show, status: :created, location: @order_friend }
      else
        format.html { render :new }
        format.json { render json: @order_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_friends/1
  # PATCH/PUT /order_friends/1.json
  def update
    respond_to do |format|
      if @order_friend.update(order_friend_params)
        format.html { redirect_to @order_friend, notice: 'Order friend was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_friend }
      else
        format.html { render :edit }
        format.json { render json: @order_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_friends/1
  # DELETE /order_friends/1.json
  def destroy
    @order_friend.destroy
    respond_to do |format|
      format.html { redirect_to order_friends_url, notice: 'Order friend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def notifications_seen
    @my_notifications = OrderFriend.where(user_id: current_user.id).update_all(:seen => true)
    render json: {sayMyName: "Eslam"}
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_friend
      @order_friend = OrderFriend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_friend_params
      params.require(:order_friend).permit(:order_id, :user_id)
    end
end
