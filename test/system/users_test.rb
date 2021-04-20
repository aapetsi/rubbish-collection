require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Collection type", with: @user.collection_type
    fill_in "Dustbin", with: @user.dustbin_id
    fill_in "Dustbin size", with: @user.dustbin_size
    fill_in "House number", with: @user.house_number
    fill_in "Name", with: @user.name
    fill_in "Payment code", with: @user.payment_code
    fill_in "Street name", with: @user.street_name
    fill_in "Suburb", with: @user.suburb
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Collection type", with: @user.collection_type
    fill_in "Dustbin", with: @user.dustbin_id
    fill_in "Dustbin size", with: @user.dustbin_size
    fill_in "House number", with: @user.house_number
    fill_in "Name", with: @user.name
    fill_in "Payment code", with: @user.payment_code
    fill_in "Street name", with: @user.street_name
    fill_in "Suburb", with: @user.suburb
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
