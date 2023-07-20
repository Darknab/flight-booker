require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# airports = Airport.create([{name: "Tatooine"}, {name: "Yavin IV"}, {name: "Daggobah"},
#              {name: "Hoth"}, {name: "Andor"}, {name: "Naboo"}, {name: "Coruscant"},
#              {name: "Geonosys"}, {name: "Mandalor"}, {name: "Jakku"} ])

# puts "Successfully created #{airports.length} airports"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'random-flights.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  puts row.to_hash
  f = Flight.new
  f.departure_airport_id = row['departure_airport']
  f.arrival_airport_id = row['arrival_airport']
  f.flight_duration = row['flight_duration']
  f.start_datetime = row['flight_datetime']
  f.save
end

puts "There are now #{Flight.count} flights in the database"

