require_relative 'time/math'
require_relative 'time/travel'
require_relative 'time/conversion'

module Tardis
  module Time
    Second     = 1
    Minute     = Second  * 60
    Hour       = Minute  * 60
    Day        = Hour    * 24
    Week       = Day     * 7
    Month      = Week    * 4
    Year       = Month   * 12
    Decade     = Year    * 10
    Century    = Decade  * 10
  end
end

class Integer
  include Tardis::Time::Conversion
  include Tardis::Time::Math
end

class Time
  include Tardis::Time::Travel
end