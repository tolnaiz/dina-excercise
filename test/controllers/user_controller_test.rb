require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "post index with name parameter" do
    post :new, name: "valami", format: :json
    assert_response :success
  end

  test "post index without name parameter" do
    post :new, format: :json
    assert_response 422
  end
end
