class Park < ApplicationRecord
  has_many :climbs
  accepts_nested_attributes_for :climbs

  validates :park_name, presence: true
  validates :park_city, presence: true
end