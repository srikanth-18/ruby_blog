require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get contests" do
    get :contests
    assert_response :success
  end

  test "should get professors" do
    get :professors
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
