class Climb < ApplicationRecord
  belongs_to :park

  validates :climb_name, presence: true
  validates :climb_grade, presence: true
  validates :park_id, presence: true
  before_create(:titleize_items)


  scope :trad_climb, -> { where(climb_type: 'Trad') }
  scope :sport_climb, -> { where(climb_type: 'Sport') }

  private
  def titleize_items
    self.climb_name = self.climb_name.titleize
  end
end