require "application_system_test_case"

class OrderFriendsTest < ApplicationSystemTestCase
  setup do
    @order_friend = order_friends(:one)
  end

  test "visiting the index" do
    visit order_friends_url
    assert_selector "h1", text: "Order Friends"
  end

  test "creating a Order friend" do
    visit order_friends_url
    click_on "New Order Friend"

    fill_in "Order", with: @order_friend.order_id
    fill_in "User", with: @order_friend.user_id
    click_on "Create Order friend"

    assert_text "Order friend was successfully created"
    click_on "Back"
  end

  test "updating a Order friend" do
    visit order_friends_url
    click_on "Edit", match: :first

    fill_in "Order", with: @order_friend.order_id
    fill_in "User", with: @order_friend.user_id
    click_on "Update Order friend"

    assert_text "Order friend was successfully updated"
    click_on "Back"
  end

  test "destroying a Order friend" do
    visit order_friends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order friend was successfully destroyed"
  end
end
