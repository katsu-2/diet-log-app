class WeightLog < ApplicationRecord
  belongs_to :user
  validates :weight, presence: true
end
