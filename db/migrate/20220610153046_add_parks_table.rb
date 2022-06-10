class AddParksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :park_name
      t.string :park_city
      t.string :park_location
    end
  end
end
