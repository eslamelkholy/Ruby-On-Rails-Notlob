class GroupFriendsController < ApplicationController

  # GET /group_friends
  # GET /group_friends.json
  def index
    @group_friends = GroupFriend.all
  end

  # GET /group_friends/1
  # GET /group_friends/1.json
  def show
  end

  # GET /group_friends/new
  def new
    @group_friend = GroupFriend.new
  end

  # GET /group_friends/1/edit
  def edit
  end

  # POST /group_friends
  # POST /group_friends.json
  def create
    @added_user_to_group = User.find_by(email: params[:user_email])
    # @group = Group.find(params[:group_id])
    respond_to do |format|
      if params[:group_id].present?
        @group = Group.find(params[:group_id])
      else
        format.html { redirect_to groups_path, notice: 'Please Select Specified Group' }
      end
      if @added_user_to_group
        @add_new_user_to_group = GroupFriend.new(:group_id => @group.id, :user_id => @added_user_to_group.id)
        @add_new_user_to_group.save
        format.html { redirect_to groups_path, notice: 'User added Successfully' }
      else
        format.html { redirect_to groups_path, notice: 'Sorry this User Does Not Exist' }
      end
    end
  end

  # PATCH/PUT /group_friends/1
  # PATCH/PUT /group_friends/1.json
  def update
    respond_to do |format|
      if @group_friend.update(group_friend_params)
        format.html { redirect_to @group_friend, notice: 'Group friend was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_friend }
      else
        format.html { render :edit }
        format.json { render json: @group_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_friends/1
  # DELETE /group_friends/1.json
  def destroy
    @group_friend = GroupFriend.find(params[:id])
    @group_friend.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group friend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_friend
      @group_friend = GroupFriend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_friend_params
      params.require(:group_friend).permit(:group_id, :user_id)
    end
end
