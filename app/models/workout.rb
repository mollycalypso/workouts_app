class Workout < ApplicationRecord
  has_many :amounts, dependent: :destroy
  has_many :exercises, through: :amounts

end
