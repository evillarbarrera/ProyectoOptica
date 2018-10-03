require "application_system_test_case"

class DetailMovementsTest < ApplicationSystemTestCase
  setup do
    @detail_movement = detail_movements(:one)
  end

  test "visiting the index" do
    visit detail_movements_url
    assert_selector "h1", text: "Detail Movements"
  end

  test "creating a Detail movement" do
    visit detail_movements_url
    click_on "New Detail Movement"

    fill_in "Cantidad", with: @detail_movement.cantidad
    fill_in "Header Movements", with: @detail_movement.header_movements_id
    fill_in "Precio Unitario", with: @detail_movement.precio_unitario
    fill_in "Products", with: @detail_movement.products_id
    fill_in "Total", with: @detail_movement.total
    click_on "Create Detail movement"

    assert_text "Detail movement was successfully created"
    click_on "Back"
  end

  test "updating a Detail movement" do
    visit detail_movements_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @detail_movement.cantidad
    fill_in "Header Movements", with: @detail_movement.header_movements_id
    fill_in "Precio Unitario", with: @detail_movement.precio_unitario
    fill_in "Products", with: @detail_movement.products_id
    fill_in "Total", with: @detail_movement.total
    click_on "Update Detail movement"

    assert_text "Detail movement was successfully updated"
    click_on "Back"
  end

  test "destroying a Detail movement" do
    visit detail_movements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detail movement was successfully destroyed"
  end
end
