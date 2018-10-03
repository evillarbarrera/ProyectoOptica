require 'test_helper'

class DetailOrderOfWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_order_of_work = detail_order_of_works(:one)
  end

  test "should get index" do
    get detail_order_of_works_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_order_of_work_url
    assert_response :success
  end

  test "should create detail_order_of_work" do
    assert_difference('DetailOrderOfWork.count') do
      post detail_order_of_works_url, params: { detail_order_of_work: { altura: @detail_order_of_work.altura, cb: @detail_order_of_work.cb, cil: @detail_order_of_work.cil, cod_cercania: @detail_order_of_work.cod_cercania, cod_ojo: @detail_order_of_work.cod_ojo, diam: @detail_order_of_work.diam, dip: @detail_order_of_work.dip, eje: @detail_order_of_work.eje, esf: @detail_order_of_work.esf, header_order_of_work_id: @detail_order_of_work.header_order_of_work_id, observaciones: @detail_order_of_work.observaciones, productos_id: @detail_order_of_work.productos_id } }
    end

    assert_redirected_to detail_order_of_work_url(DetailOrderOfWork.last)
  end

  test "should show detail_order_of_work" do
    get detail_order_of_work_url(@detail_order_of_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_order_of_work_url(@detail_order_of_work)
    assert_response :success
  end

  test "should update detail_order_of_work" do
    patch detail_order_of_work_url(@detail_order_of_work), params: { detail_order_of_work: { altura: @detail_order_of_work.altura, cb: @detail_order_of_work.cb, cil: @detail_order_of_work.cil, cod_cercania: @detail_order_of_work.cod_cercania, cod_ojo: @detail_order_of_work.cod_ojo, diam: @detail_order_of_work.diam, dip: @detail_order_of_work.dip, eje: @detail_order_of_work.eje, esf: @detail_order_of_work.esf, header_order_of_work_id: @detail_order_of_work.header_order_of_work_id, observaciones: @detail_order_of_work.observaciones, productos_id: @detail_order_of_work.productos_id } }
    assert_redirected_to detail_order_of_work_url(@detail_order_of_work)
  end

  test "should destroy detail_order_of_work" do
    assert_difference('DetailOrderOfWork.count', -1) do
      delete detail_order_of_work_url(@detail_order_of_work)
    end

    assert_redirected_to detail_order_of_works_url
  end
end
