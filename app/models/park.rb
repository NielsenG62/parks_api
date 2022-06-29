class Park < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:park_name, :park_city]

  has_many :climbs
  accepts_nested_attributes_for :climbs

  validates :park_name, presence: true
  validates :park_city, presence: true
end