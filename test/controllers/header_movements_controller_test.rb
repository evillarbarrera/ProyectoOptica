require 'test_helper'

class HeaderMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @header_movement = header_movements(:one)
  end

  test "should get index" do
    get header_movements_url
    assert_response :success
  end

  test "should get new" do
    get new_header_movement_url
    assert_response :success
  end

  test "should create header_movement" do
    assert_difference('HeaderMovement.count') do
      post header_movements_url, params: { header_movement: { document_types_id: @header_movement.document_types_id, fecha_creacion: @header_movement.fecha_creacion, header_order_of_works_id: @header_movement.header_order_of_works_id, movement_types_id: @header_movement.movement_types_id, providers_id: @header_movement.providers_id } }
    end

    assert_redirected_to header_movement_url(HeaderMovement.last)
  end

  test "should show header_movement" do
    get header_movement_url(@header_movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_header_movement_url(@header_movement)
    assert_response :success
  end

  test "should update header_movement" do
    patch header_movement_url(@header_movement), params: { header_movement: { document_types_id: @header_movement.document_types_id, fecha_creacion: @header_movement.fecha_creacion, header_order_of_works_id: @header_movement.header_order_of_works_id, movement_types_id: @header_movement.movement_types_id, providers_id: @header_movement.providers_id } }
    assert_redirected_to header_movement_url(@header_movement)
  end

  test "should destroy header_movement" do
    assert_difference('HeaderMovement.count', -1) do
      delete header_movement_url(@header_movement)
    end

    assert_redirected_to header_movements_url
  end
end
