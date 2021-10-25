require_relative '../../../app/serializers/v1/user_serializer'

module V1
  class UsersController < ActionController::API
    def index
      users = User.all
      serializer = V1::UserSerializer.new

      render json: serializer.serialize_many(users)
    end
  end
end
