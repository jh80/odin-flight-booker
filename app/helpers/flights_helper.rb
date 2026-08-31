module FlightsHelper
  def collect_unique_start_days(flights)
    dates = flights.order(:start).map do |flight|
      name = flight.start.strftime("%b %d %Y")
      value = flight.start.to_date
      [name, value]
      end
    dates.uniq
  end
end
