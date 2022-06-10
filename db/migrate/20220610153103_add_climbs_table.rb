class AddClimbsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :sport_climbs do |t|
      t.string :climb_name
      t.string :climb_grade
      t.integer :climb_pitches
      t.integer :climb_height_feet
    end

    create_table :trad_climbs do |t|
      t.string :climb_name
      t.string :climb_grade
      t.integer :climb_pitches
      t.integer :climb_height_feet
    end
  end
end
