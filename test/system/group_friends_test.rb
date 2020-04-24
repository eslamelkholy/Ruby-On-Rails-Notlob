require "application_system_test_case"

class GroupFriendsTest < ApplicationSystemTestCase
  setup do
    @group_friend = group_friends(:one)
  end

  test "visiting the index" do
    visit group_friends_url
    assert_selector "h1", text: "Group Friends"
  end

  test "creating a Group friend" do
    visit group_friends_url
    click_on "New Group Friend"

    fill_in "Group", with: @group_friend.group_id
    fill_in "User", with: @group_friend.user_id
    click_on "Create Group friend"

    assert_text "Group friend was successfully created"
    click_on "Back"
  end

  test "updating a Group friend" do
    visit group_friends_url
    click_on "Edit", match: :first

    fill_in "Group", with: @group_friend.group_id
    fill_in "User", with: @group_friend.user_id
    click_on "Update Group friend"

    assert_text "Group friend was successfully updated"
    click_on "Back"
  end

  test "destroying a Group friend" do
    visit group_friends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group friend was successfully destroyed"
  end
end
