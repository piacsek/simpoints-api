require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index with expected serialization" do
    get v1_users_url
    assert_response :success
  end
end