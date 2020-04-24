require 'test_helper'

class GroupFriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_friend = group_friends(:one)
  end

  test "should get index" do
    get group_friends_url
    assert_response :success
  end

  test "should get new" do
    get new_group_friend_url
    assert_response :success
  end

  test "should create group_friend" do
    assert_difference('GroupFriend.count') do
      post group_friends_url, params: { group_friend: { group_id: @group_friend.group_id, user_id: @group_friend.user_id } }
    end

    assert_redirected_to group_friend_url(GroupFriend.last)
  end

  test "should show group_friend" do
    get group_friend_url(@group_friend)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_friend_url(@group_friend)
    assert_response :success
  end

  test "should update group_friend" do
    patch group_friend_url(@group_friend), params: { group_friend: { group_id: @group_friend.group_id, user_id: @group_friend.user_id } }
    assert_redirected_to group_friend_url(@group_friend)
  end

  test "should destroy group_friend" do
    assert_difference('GroupFriend.count', -1) do
      delete group_friend_url(@group_friend)
    end

    assert_redirected_to group_friends_url
  end
end
