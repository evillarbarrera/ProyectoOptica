require "application_system_test_case"

class MovementTypesTest < ApplicationSystemTestCase
  setup do
    @movement_type = movement_types(:one)
  end

  test "visiting the index" do
    visit movement_types_url
    assert_selector "h1", text: "Movement Types"
  end

  test "creating a Movement type" do
    visit movement_types_url
    click_on "New Movement Type"

    fill_in "Nombre", with: @movement_type.nombre
    click_on "Create Movement type"

    assert_text "Movement type was successfully created"
    click_on "Back"
  end

  test "updating a Movement type" do
    visit movement_types_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @movement_type.nombre
    click_on "Update Movement type"

    assert_text "Movement type was successfully updated"
    click_on "Back"
  end

  test "destroying a Movement type" do
    visit movement_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movement type was successfully destroyed"
  end
end
