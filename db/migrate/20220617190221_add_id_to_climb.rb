class AddIdToClimb < ActiveRecord::Migration[5.2]
  def change
    add_column(:climbs, :park_id, :integer)
  end
end
