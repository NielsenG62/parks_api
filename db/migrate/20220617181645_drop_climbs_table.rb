class DropClimbsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :trad_climbs
    drop_table :sport_climbs
    drop_table :items
  end
end
