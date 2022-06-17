class AddClimbsRefactoredTable < ActiveRecord::Migration[5.2]
  def change
    create_table :climbs do |t|
      t.string :climb_name
      t.string :climb_grade
      t.string :climb_type
      t.integer :climb_pitches
      t.integer :climb_height_feet
    end
  end
end
