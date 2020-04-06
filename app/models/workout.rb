class Workout < ApplicationRecord
  has_many :exercises, dependent: :destroy
  has_many :amounts, through: :amounts
end
