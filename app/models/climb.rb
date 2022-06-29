class Climb < ApplicationRecord
  include PgSearch::Model
  multisearchable (
    against: [:climb_name, :climb_grade, :climb_type, :climb_pitches]
    additional_attributes: -> (climb) { { park_id: climb.park_id } }
  )

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