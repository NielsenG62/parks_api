# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

park = Park.create!(park_name: "Broughton Bluff",
                    park_city: "Troutdale")

sport = Climb.create!(climb_name: "Red Eye",
                      climb_grade: "5.10",
                      climb_type: "Sport",
                      climb_pitches: 1,
                      climb_height_feet: 60,
                      park_id: park.id)

trad = Climb.create!(climb_name: "Gandalf's Grip",
                      climb_grade: "5.9+",
                      climb_type: "Trad",
                      climb_pitches: 3,
                      climb_height_feet: 200,
                      park_id: park.id)

p "Created #{park.park_name}, with climbs #{sport.climb_name} and #{trad.climb_name}"