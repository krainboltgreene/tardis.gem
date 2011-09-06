require_relative 'tardis/version'
require_relative 'tardis/math'
require_relative 'tardis/convert'

module Tardis
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

class Fixnum
  include Tardis::Convert
  include Tardis::Math
end