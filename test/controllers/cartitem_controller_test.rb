require 'test_helper'

class CartitemControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cartitem_new_url
    assert_response :success
  end

  test "should get create" do
    get cartitem_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cartitem_destroy_url
    assert_response :success
  end

end
