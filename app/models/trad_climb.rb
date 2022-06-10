class TradClimb < ApplicationRecord
  belongs_to :park

  validates :climb_name, presence: true
  validates :climb_grade, presence: true
  validates :park_id, presence: true
end