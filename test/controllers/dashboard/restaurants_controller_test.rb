require 'test_helper'

class Dashboard::RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get dashboard_restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_restaurant_url
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post dashboard_restaurants_url, params: { restaurant: {  } }
    end

    assert_redirected_to restaurant_url(Restaurant.last)
  end

  test "should show restaurant" do
    get dashboard_restaurant_url(@restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_restaurant_url(@restaurant)
    assert_response :success
  end

  test "should update restaurant" do
    patch dashboard_restaurant_url(@restaurant), params: { restaurant: {  } }
    assert_redirected_to restaurant_url(@restaurant)
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete dashboard_restaurant_url(@restaurant)
    end

    assert_redirected_to dashboard_restaurants_url
  end
end
