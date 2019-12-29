# Tardis::Time is the module where all time based methods, classes, and modules
# are defined. Anything that has to do with the second unit of measurement goes
# into Tardis::Time.
module Tardis
  module Moment
    # The units of time, based in seconds
    SECOND = 1
    MINUTE = SECOND * 60
    HOUR = MINUTE * 60
    DAY = HOUR * 24
    WEEK = DAY * 7
    # https://en.wikipedia.org/wiki/Gregorian_calendar
    YEAR = DAY * 365.2425
    MONTH = YEAR / 12

    require_relative "moment/upscale"
    require_relative "moment/downscale"
    require_relative "moment/traversal"
  end
end
