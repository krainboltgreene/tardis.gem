module Tardis
  module Math

    def second
      self == 1 ? Tardis::Second : self * Tardis::Second
    end
    alias_method :seconds, :second

    def minute
      if self == 1
        Tardis::Minute
      else
        self * Tardis::Minute
      end
    end
    alias_method :minutes, :minute

    def hour
      if self == 1
        Tardis::Hour
      else
        self * Tardis::Hour
      end
    end
    alias_method :hours, :hour

  end
end