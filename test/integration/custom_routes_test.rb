require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "la url /login debe ser valida" do
    get "/login"
    assert_response :success
  end
  
  test "la url /register debe ser valida" do
    get "/register"
    assert_response :success
  end
  
  test "la url /logout debe ser valida" do
    get "/logout"
    assert_response :redirect
    assert_redirected_to "/"
  end
end
