class User < ApplicationRecord
  validates :name, :balance, presence: true
  validates :balance, numericality: { only_integer: true }
end
