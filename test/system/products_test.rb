require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Cod Producto", with: @product.cod_producto
    fill_in "Color", with: @product.color
    fill_in "Marca", with: @product.marca
    fill_in "Medidas", with: @product.medidas
    fill_in "Nombre", with: @product.nombre
    fill_in "Vigente", with: @product.vigente
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Cod Producto", with: @product.cod_producto
    fill_in "Color", with: @product.color
    fill_in "Marca", with: @product.marca
    fill_in "Medidas", with: @product.medidas
    fill_in "Nombre", with: @product.nombre
    fill_in "Vigente", with: @product.vigente
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
