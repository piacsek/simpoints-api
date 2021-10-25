require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'does not allow non-integer balance' do
    user = users(:rich)

    user.balance = "asd"
    refute user.valid?

    user.balance = 1.23
    refute user.valid?

    user.balance = nil
    refute user.valid?
  end

  test 'does not allow nil name' do
    user = users(:rich)

    user.name = nil
    refute user.valid?
  end


end
