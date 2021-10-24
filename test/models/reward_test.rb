require "test_helper"

class RewardTest < ActiveSupport::TestCase
  test 'does not allow non-integer cost' do
    reward = rewards(:tekpix)

    reward.cost = "asd"
    refute reward.valid?

    reward.cost = 1.23
    refute reward.valid?

    reward.cost = nil
    refute reward.valid?
  end

  test 'does not allow nil name' do
    reward = rewards(:tekpix)

    reward.name = nil
    refute reward.valid?
  end

  test 'does not allow nil description' do
    reward = rewards(:tekpix)

    reward.description = nil
    refute reward.valid?
  end
end
