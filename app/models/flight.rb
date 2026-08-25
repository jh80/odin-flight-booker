class Flight < ApplicationRecord
  validates :start, presence: true
  validates :duration, presence: true
  validates :departure_airport, presence: true
  validates :arrival_airport, presence: true

  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
end
