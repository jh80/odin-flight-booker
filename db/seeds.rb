# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[ "SFO", "SJC", "LAX", "EWR", "JFK", "LGA", "SEA", "PDX", "LAS", "AUS" ].each do |airport_code|
  Airport.find_or_create_by!(code: airport_code)
end

airports = Airport.all
sfo = airports.find_by(code: "SFO")
sjc = airports.find_by(code: "SJC")
lax = airports.find_by(code: "LAX")
ewr = airports.find_by(code: "EWR")
jfk = airports.find_by(code: "JFK")
lga = airports.find_by(code: "LGA")
sea = airports.find_by(code: "SEA")
las = airports.find_by(code: "LAS")
aus = airports.find_by(code: "AUS")

sfo.departing_flights.create!([ { start: "2026-09-18 9:20:00", duration: 112.minutes,  arrival_airport: sea } ])
sfo.departing_flights.create!([ { start: "2026-09-18 12:15:00", duration: 112.minutes,  arrival_airport: sea } ])
sfo.departing_flights.create!([ { start: "2026-09-18 17:50:00", duration: 112.minutes,  arrival_airport: sea } ])
sfo.departing_flights.create!([ { start: "2027-01-12 5:15:00", duration: 209.minutes, arrival_airport: aus } ])
sea.departing_flights.create!([ { start: "2026-10-18 11:40:00", duration: 118.minutes, arrival_airport: sjc } ])
sea.departing_flights.create!([ { start: "2027-01-23 8:20:00", duration: 358.minutes, arrival_airport: jfk } ])
aus.departing_flights.create!([ { start: "2027-03-04 7:50:00", duration: 247.minutes, arrival_airport: sjc } ])
aus.departing_flights.create!([ { start: "2027-11-17 12:10:00", duration: 222.minutes, arrival_airport: sea } ])
lax.departing_flights.create!([ { start: "2026-11-17 8:50:00", duration: 118.minutes, arrival_airport: sea } ])
lax.departing_flights.create!([ { start: "2027-02-18 7:40:00", duration: 363.minutes, arrival_airport: ewr } ])
jfk.departing_flights.create!([ { start: "2026-09-20 20:50:00", duration: 375.minutes, arrival_airport: sfo } ])
jfk.departing_flights.create!([ { start: "2026-09-20 5:40:00", duration: 375.minutes, arrival_airport: sfo } ])
jfk.departing_flights.create!([ { start: "2026-09-20 9:20:00", duration: 375.minutes, arrival_airport: sfo } ])
jfk.departing_flights.create!([ { start: "2026-09-20 14:10:00", duration: 375.minutes, arrival_airport: sfo } ])
ewr.departing_flights.create!([ { start: "2026-12-08 9:10:00", duration: 347.minutes, arrival_airport: sea } ])
ewr.departing_flights.create!([ { start: "2026-12-08 11:35:00", duration: 347.minutes, arrival_airport: sea } ])
ewr.departing_flights.create!([ { start: "2026-12-08 21:05:00", duration: 347.minutes, arrival_airport: sea } ])
lga.departing_flights.create!([ { start: "2027-07-22 21:25:00", duration: 255.minutes, arrival_airport: aus } ])
las.departing_flights.create!([ { start: "2027-06-13 10:00:00", duration: 208.minutes, arrival_airport: sjc } ])
las.departing_flights.create!([ { start: "2027-06-13 9:35:00", duration: 208.minutes, arrival_airport: sjc } ])
las.departing_flights.create!([ { start: "2027-06-13 12:40:00", duration: 208.minutes, arrival_airport: sjc } ])
las.departing_flights.create!([ { start: "2027-06-13 19:10:00", duration: 208.minutes, arrival_airport: sjc } ])
las.departing_flights.create!([ { start: "2027-06-13 23:15:00", duration: 208.minutes, arrival_airport: sjc } ])