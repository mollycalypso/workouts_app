class Exercise < ApplicationRecord
  has_many :amounts
  has_many :workouts, through: :amounts

end
