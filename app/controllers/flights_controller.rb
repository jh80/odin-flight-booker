class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all
    @date_options = helpers.collect_unique_start_days(@flights)

    if params[:query].present?
      @searched_flights = Flight.where(
                            departure_airport_id: query_params[:departure_airport_id],
                            arrival_airport_id: query_params[:arrival_airport_id],
                            start: query_params[:date].to_date.all_day
      )
    else
      @searched_flights = nil
    end
  end

  private

  def query_params
    params.expect(query: [ :departure_airport_id, :arrival_airport_id, :date, :num_tickets ])
  end
end
