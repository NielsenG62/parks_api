class AddIdToClimbs < ActiveRecord::Migration[5.2]
  def change
    add_column(:sport_climbs, :park_id, :integer)
    add_column(:trad_climbs, :park_id, :integer)
  end
end
