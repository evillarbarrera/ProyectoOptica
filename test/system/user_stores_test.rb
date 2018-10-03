require "application_system_test_case"

class UserStoresTest < ApplicationSystemTestCase
  setup do
    @user_store = user_stores(:one)
  end

  test "visiting the index" do
    visit user_stores_url
    assert_selector "h1", text: "User Stores"
  end

  test "creating a User store" do
    visit user_stores_url
    click_on "New User Store"

    fill_in "Store", with: @user_store.store_id
    fill_in "User", with: @user_store.user_id
    click_on "Create User store"

    assert_text "User store was successfully created"
    click_on "Back"
  end

  test "updating a User store" do
    visit user_stores_url
    click_on "Edit", match: :first

    fill_in "Store", with: @user_store.store_id
    fill_in "User", with: @user_store.user_id
    click_on "Update User store"

    assert_text "User store was successfully updated"
    click_on "Back"
  end

  test "destroying a User store" do
    visit user_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User store was successfully destroyed"
  end
end
