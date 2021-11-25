module V1
  class UserSerializer

    def serialize(user)
      {
          name: user.name,
          balance: user.balance,
          join_date: user.created_at.to_date
      }
    end

    def serialize_many(users)
      users.map {|user| serialize(user)}
    end
  end
end