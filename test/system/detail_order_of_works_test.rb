require "application_system_test_case"

class DetailOrderOfWorksTest < ApplicationSystemTestCase
  setup do
    @detail_order_of_work = detail_order_of_works(:one)
  end

  test "visiting the index" do
    visit detail_order_of_works_url
    assert_selector "h1", text: "Detail Order Of Works"
  end

  test "creating a Detail order of work" do
    visit detail_order_of_works_url
    click_on "New Detail Order Of Work"

    fill_in "Altura", with: @detail_order_of_work.altura
    fill_in "Cb", with: @detail_order_of_work.cb
    fill_in "Cil", with: @detail_order_of_work.cil
    fill_in "Cod Cercania", with: @detail_order_of_work.cod_cercania
    fill_in "Cod Ojo", with: @detail_order_of_work.cod_ojo
    fill_in "Diam", with: @detail_order_of_work.diam
    fill_in "Dip", with: @detail_order_of_work.dip
    fill_in "Eje", with: @detail_order_of_work.eje
    fill_in "Esf", with: @detail_order_of_work.esf
    fill_in "Header Order Of Work", with: @detail_order_of_work.header_order_of_work_id
    fill_in "Observaciones", with: @detail_order_of_work.observaciones
    fill_in "Productos", with: @detail_order_of_work.productos_id
    click_on "Create Detail order of work"

    assert_text "Detail order of work was successfully created"
    click_on "Back"
  end

  test "updating a Detail order of work" do
    visit detail_order_of_works_url
    click_on "Edit", match: :first

    fill_in "Altura", with: @detail_order_of_work.altura
    fill_in "Cb", with: @detail_order_of_work.cb
    fill_in "Cil", with: @detail_order_of_work.cil
    fill_in "Cod Cercania", with: @detail_order_of_work.cod_cercania
    fill_in "Cod Ojo", with: @detail_order_of_work.cod_ojo
    fill_in "Diam", with: @detail_order_of_work.diam
    fill_in "Dip", with: @detail_order_of_work.dip
    fill_in "Eje", with: @detail_order_of_work.eje
    fill_in "Esf", with: @detail_order_of_work.esf
    fill_in "Header Order Of Work", with: @detail_order_of_work.header_order_of_work_id
    fill_in "Observaciones", with: @detail_order_of_work.observaciones
    fill_in "Productos", with: @detail_order_of_work.productos_id
    click_on "Update Detail order of work"

    assert_text "Detail order of work was successfully updated"
    click_on "Back"
  end

  test "destroying a Detail order of work" do
    visit detail_order_of_works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detail order of work was successfully destroyed"
  end
end
