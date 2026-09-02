module FlightsHelper
  def collect_unique_start_days(flights)
    dates = flights.order(:start).map do |flight|
      name = flight.start.strftime("%b %d %Y")
      value = flight.start.to_date
      [name, value]
      end
    dates.uniq
  end

  def format_duration(duration_in_seconds)
    units = { "hours" => duration_in_seconds/3600,
              "minutes" => (duration_in_seconds / 60) % 60
            }
    units.reduce("") do | memo, (key, value) |
      if value > 0
        new = memo + "#{value} #{key} "
      else
        memo
      end
    end
  end
end
