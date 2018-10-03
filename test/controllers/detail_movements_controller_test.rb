require 'test_helper'

class DetailMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_movement = detail_movements(:one)
  end

  test "should get index" do
    get detail_movements_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_movement_url
    assert_response :success
  end

  test "should create detail_movement" do
    assert_difference('DetailMovement.count') do
      post detail_movements_url, params: { detail_movement: { cantidad: @detail_movement.cantidad, header_movements_id: @detail_movement.header_movements_id, precio_unitario: @detail_movement.precio_unitario, products_id: @detail_movement.products_id, total: @detail_movement.total } }
    end

    assert_redirected_to detail_movement_url(DetailMovement.last)
  end

  test "should show detail_movement" do
    get detail_movement_url(@detail_movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_movement_url(@detail_movement)
    assert_response :success
  end

  test "should update detail_movement" do
    patch detail_movement_url(@detail_movement), params: { detail_movement: { cantidad: @detail_movement.cantidad, header_movements_id: @detail_movement.header_movements_id, precio_unitario: @detail_movement.precio_unitario, products_id: @detail_movement.products_id, total: @detail_movement.total } }
    assert_redirected_to detail_movement_url(@detail_movement)
  end

  test "should destroy detail_movement" do
    assert_difference('DetailMovement.count', -1) do
      delete detail_movement_url(@detail_movement)
    end

    assert_redirected_to detail_movements_url
  end
end
