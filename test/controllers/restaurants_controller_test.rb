require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get restaurants_name:string_url
    assert_response :success
  end

  test "should get address:string" do
    get restaurants_address:string_url
    assert_response :success
  end

  test "should get phone_number:string" do
    get restaurants_phone_number:string_url
    assert_response :success
  end

  test "should get category:string" do
    get restaurants_category:string_url
    assert_response :success
  end

end
