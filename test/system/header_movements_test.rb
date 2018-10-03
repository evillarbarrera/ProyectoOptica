require "application_system_test_case"

class HeaderMovementsTest < ApplicationSystemTestCase
  setup do
    @header_movement = header_movements(:one)
  end

  test "visiting the index" do
    visit header_movements_url
    assert_selector "h1", text: "Header Movements"
  end

  test "creating a Header movement" do
    visit header_movements_url
    click_on "New Header Movement"

    fill_in "Document Types", with: @header_movement.document_types_id
    fill_in "Fecha Creacion", with: @header_movement.fecha_creacion
    fill_in "Header Order Of Works", with: @header_movement.header_order_of_works_id
    fill_in "Movement Types", with: @header_movement.movement_types_id
    fill_in "Providers", with: @header_movement.providers_id
    click_on "Create Header movement"

    assert_text "Header movement was successfully created"
    click_on "Back"
  end

  test "updating a Header movement" do
    visit header_movements_url
    click_on "Edit", match: :first

    fill_in "Document Types", with: @header_movement.document_types_id
    fill_in "Fecha Creacion", with: @header_movement.fecha_creacion
    fill_in "Header Order Of Works", with: @header_movement.header_order_of_works_id
    fill_in "Movement Types", with: @header_movement.movement_types_id
    fill_in "Providers", with: @header_movement.providers_id
    click_on "Update Header movement"

    assert_text "Header movement was successfully updated"
    click_on "Back"
  end

  test "destroying a Header movement" do
    visit header_movements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Header movement was successfully destroyed"
  end
end
