require "test_helper"

class BikeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bike_index_url
    assert_response :success
  end

  test "should get new" do
    get bike_new_url
    assert_response :success
  end

  test "should get edit" do
    get bike_edit_url
    assert_response :success
  end
end
