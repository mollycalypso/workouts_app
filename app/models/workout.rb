class Workout < ApplicationRecord
  has_many :amounts
  has_many :exercises, through: :amounts

end
