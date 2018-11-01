require 'test_helper'

class FoodControllerTest < ActionDispatch::IntegrationTest
  test "should get chef" do
    get food_chef_url
    assert_response :success
  end

  test "should get dish" do
    get food_dish_url
    assert_response :success
  end

end
