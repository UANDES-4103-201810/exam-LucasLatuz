require 'test_helper'

class OrderhaspizzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orderhaspizza = orderhaspizzas(:one)
  end

  test "should get index" do
    get orderhaspizzas_url
    assert_response :success
  end

  test "should get new" do
    get new_orderhaspizza_url
    assert_response :success
  end

  test "should create orderhaspizza" do
    assert_difference('Orderhaspizza.count') do
      post orderhaspizzas_url, params: { orderhaspizza: { order_id: @orderhaspizza.order_id, pizzas_id: @orderhaspizza.pizzas_id } }
    end

    assert_redirected_to orderhaspizza_url(Orderhaspizza.last)
  end

  test "should show orderhaspizza" do
    get orderhaspizza_url(@orderhaspizza)
    assert_response :success
  end

  test "should get edit" do
    get edit_orderhaspizza_url(@orderhaspizza)
    assert_response :success
  end

  test "should update orderhaspizza" do
    patch orderhaspizza_url(@orderhaspizza), params: { orderhaspizza: { order_id: @orderhaspizza.order_id, pizzas_id: @orderhaspizza.pizzas_id } }
    assert_redirected_to orderhaspizza_url(@orderhaspizza)
  end

  test "should destroy orderhaspizza" do
    assert_difference('Orderhaspizza.count', -1) do
      delete orderhaspizza_url(@orderhaspizza)
    end

    assert_redirected_to orderhaspizzas_url
  end
end
