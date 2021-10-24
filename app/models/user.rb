class User < ApplicationRecord
  validates :name, presence: true
  validates :balance, presence: true,  numericality: { only_integer: true }
end
