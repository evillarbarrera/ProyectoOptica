require 'test_helper'

class HeaderOrderOfWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @header_order_of_work = header_order_of_works(:one)
  end

  test "should get index" do
    get header_order_of_works_url
    assert_response :success
  end

  test "should get new" do
    get new_header_order_of_work_url
    assert_response :success
  end

  test "should create header_order_of_work" do
    assert_difference('HeaderOrderOfWork.count') do
      post header_order_of_works_url, params: { header_order_of_work: { acuenta: @header_order_of_work.acuenta, fecha_entrega: @header_order_of_work.fecha_entrega, fecha_ingres: @header_order_of_work.fecha_ingres, flag_entregado: @header_order_of_work.flag_entregado, horas: @header_order_of_work.horas, saldo: @header_order_of_work.saldo, total: @header_order_of_work.total, user_id: @header_order_of_work.user_id } }
    end

    assert_redirected_to header_order_of_work_url(HeaderOrderOfWork.last)
  end

  test "should show header_order_of_work" do
    get header_order_of_work_url(@header_order_of_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_header_order_of_work_url(@header_order_of_work)
    assert_response :success
  end

  test "should update header_order_of_work" do
    patch header_order_of_work_url(@header_order_of_work), params: { header_order_of_work: { acuenta: @header_order_of_work.acuenta, fecha_entrega: @header_order_of_work.fecha_entrega, fecha_ingres: @header_order_of_work.fecha_ingres, flag_entregado: @header_order_of_work.flag_entregado, horas: @header_order_of_work.horas, saldo: @header_order_of_work.saldo, total: @header_order_of_work.total, user_id: @header_order_of_work.user_id } }
    assert_redirected_to header_order_of_work_url(@header_order_of_work)
  end

  test "should destroy header_order_of_work" do
    assert_difference('HeaderOrderOfWork.count', -1) do
      delete header_order_of_work_url(@header_order_of_work)
    end

    assert_redirected_to header_order_of_works_url
  end
end
