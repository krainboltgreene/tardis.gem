require_relative 'extended/math'

module Tardis::Time
  Fortnight  = Week    * 2
  Quarter    = Month   * 3
  Olympiad   = Year    * 4
  Lustrum    = Year    * 5
  Indiction  = Year    * 15
  Jubilee    = Decade  * 5
  Millennium = Century * 10
  Eon        = 1.0/0
end