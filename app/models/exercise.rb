class Exercise < ApplicationRecord
  has_many :amounts, dependent: :destroy
end
