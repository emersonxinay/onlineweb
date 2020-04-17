require 'test_helper'

class StateOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_order = state_orders(:one)
  end

  test "should get index" do
    get state_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_state_order_url
    assert_response :success
  end

  test "should create state_order" do
    assert_difference('StateOrder.count') do
      post state_orders_url, params: { state_order: { name: @state_order.name } }
    end

    assert_redirected_to state_order_url(StateOrder.last)
  end

  test "should show state_order" do
    get state_order_url(@state_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_order_url(@state_order)
    assert_response :success
  end

  test "should update state_order" do
    patch state_order_url(@state_order), params: { state_order: { name: @state_order.name } }
    assert_redirected_to state_order_url(@state_order)
  end

  test "should destroy state_order" do
    assert_difference('StateOrder.count', -1) do
      delete state_order_url(@state_order)
    end

    assert_redirected_to state_orders_url
  end
end
