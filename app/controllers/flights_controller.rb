class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all
    @date_options = helpers.collect_unique_start_days(@flights)
  end
end
