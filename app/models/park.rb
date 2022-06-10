class Park < ApplicationRecord
  has_many :sport_climbs
  has_many :trad_climbs
  accepts_nested_attributes_for :sport_climbs
  accepts_nested_attributes_for :trad_climbs
end