require 'test_helper'
require_relative '../../../app/serializers/v1/user_serializer'

class UserSerializerTest < ActiveSupport::TestCase
  def serializer
    V1::UserSerializer.new
  end

  test "serializes a single user" do
    user = users(:rich)

    expected_serialized_user = {
        name: user.name,
        balance: user.balance,
        join_date: user.created_at.to_date
    }

    assert expected_serialized_user == serializer.serialize(user)
  end

  test 'serializes a list of users' do
    users = User.all

    expected_serialized_users = users.map do |user|
      {
          name: user.name,
          balance: user.balance,
          join_date: user.created_at.to_date
      }
    end

    assert expected_serialized_users == serializer.serialize_many(users)

  end
end