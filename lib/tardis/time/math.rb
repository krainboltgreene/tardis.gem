module Tardis::Time::Math

  # List all of the time units
  units = %w[second minute hour day week month year decade century]

  # Go over each time unit in order to define a new method with that
  # unit's name
  units.each do |u|

    # example: 5.years
    # anatomy: Integer.unit() => Integer
    # description: |
    #   Called on an Integer and returns an Integer which represents
    #   the amount of seconds that unit is worth.
    self.send :define_method, u do

      # Grab the constant value that corresponds to the unit name
      unit = Tardis::Time.const_get(u.capitalize.to_sym)

      # Determine if you're sending just the unit value or if you're
      # going to send a multiple of the unit value.
      if self == 1
        unit
      else
        self * unit
      end
    end
  end

  # Alias the plural of each unit method to the singular.
  alias_method :seconds, :second
  alias_method :minutes, :minute
  alias_method :hours, :hour
  alias_method :days, :day
  alias_method :weeks, :week
  alias_method :months, :month
  alias_method :years, :year
  alias_method :decades, :decade
  alias_method :centuries, :century
end
