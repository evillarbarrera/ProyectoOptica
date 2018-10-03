require "application_system_test_case"

class HeaderOrderOfWorksTest < ApplicationSystemTestCase
  setup do
    @header_order_of_work = header_order_of_works(:one)
  end

  test "visiting the index" do
    visit header_order_of_works_url
    assert_selector "h1", text: "Header Order Of Works"
  end

  test "creating a Header order of work" do
    visit header_order_of_works_url
    click_on "New Header Order Of Work"

    fill_in "Acuenta", with: @header_order_of_work.acuenta
    fill_in "Fecha Entrega", with: @header_order_of_work.fecha_entrega
    fill_in "Fecha Ingres", with: @header_order_of_work.fecha_ingres
    fill_in "Flag Entregado", with: @header_order_of_work.flag_entregado
    fill_in "Horas", with: @header_order_of_work.horas
    fill_in "Saldo", with: @header_order_of_work.saldo
    fill_in "Total", with: @header_order_of_work.total
    fill_in "User", with: @header_order_of_work.user_id
    click_on "Create Header order of work"

    assert_text "Header order of work was successfully created"
    click_on "Back"
  end

  test "updating a Header order of work" do
    visit header_order_of_works_url
    click_on "Edit", match: :first

    fill_in "Acuenta", with: @header_order_of_work.acuenta
    fill_in "Fecha Entrega", with: @header_order_of_work.fecha_entrega
    fill_in "Fecha Ingres", with: @header_order_of_work.fecha_ingres
    fill_in "Flag Entregado", with: @header_order_of_work.flag_entregado
    fill_in "Horas", with: @header_order_of_work.horas
    fill_in "Saldo", with: @header_order_of_work.saldo
    fill_in "Total", with: @header_order_of_work.total
    fill_in "User", with: @header_order_of_work.user_id
    click_on "Update Header order of work"

    assert_text "Header order of work was successfully updated"
    click_on "Back"
  end

  test "destroying a Header order of work" do
    visit header_order_of_works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Header order of work was successfully destroyed"
  end
end
