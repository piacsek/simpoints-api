class Reward < ApplicationRecord
  validates :name, :description, :cost, presence: true
  validates :cost, numericality: { only_integer: true }
end
