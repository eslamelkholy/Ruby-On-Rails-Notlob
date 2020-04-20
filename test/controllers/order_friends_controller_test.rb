require 'test_helper'

class OrderFriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_friend = order_friends(:one)
  end

  test "should get index" do
    get order_friends_url
    assert_response :success
  end

  test "should get new" do
    get new_order_friend_url
    assert_response :success
  end

  test "should create order_friend" do
    assert_difference('OrderFriend.count') do
      post order_friends_url, params: { order_friend: { order_id: @order_friend.order_id, user_id: @order_friend.user_id } }
    end

    assert_redirected_to order_friend_url(OrderFriend.last)
  end

  test "should show order_friend" do
    get order_friend_url(@order_friend)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_friend_url(@order_friend)
    assert_response :success
  end

  test "should update order_friend" do
    patch order_friend_url(@order_friend), params: { order_friend: { order_id: @order_friend.order_id, user_id: @order_friend.user_id } }
    assert_redirected_to order_friend_url(@order_friend)
  end

  test "should destroy order_friend" do
    assert_difference('OrderFriend.count', -1) do
      delete order_friend_url(@order_friend)
    end

    assert_redirected_to order_friends_url
  end
end
