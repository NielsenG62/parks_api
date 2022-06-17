class Climb < ApplicationRecord
  belongs_to :park

  validates :climb_name, presence: true
  validates :climb_grade, presence: true
  validates :climb_type, presence: true
  validates :park_id, presence: true
  before_save(:titleize_items)

  scope :trad_climb, -> { where(climb_type: 'Trad') }
  scope :sport_climb, -> { where(climb_type: 'Sport') }

  private
  def titleize_items
    self.climb_name = self.climb_name.titleize
    self.climb_type = self.climb_type.titleize
  end
end