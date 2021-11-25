require 'test_helper'
require_relative '../../../app/serializers/v1/user_serializer'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index with expected serialization - many users" do
    expected_response = V1::UserSerializer.new.serialize_many(User.all).to_json

    get v1_users_url

    assert_response :success
    assert expected_response == response.body
  end
end