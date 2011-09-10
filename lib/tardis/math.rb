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

    def day
      if self == 1
        Tardis::Day
      else
        self * Tardis::Day
      end
    end
    alias_method :days, :day

    def week
      if self == 1
        Tardis::Week
      else
        self * Tardis::Week
      end
    end
    alias_method :weeks, :week

    def month
      if self == 1
        Tardis::Month
      else
        self * Tardis::Month
      end
    end
    alias_method :months, :month

    def year
      if self == 1
        Tardis::Year
      else
        self * Tardis::Year
      end
    end
    alias_method :years, :year

    def decade
      if self == 1
        Tardis::Decade
      else
        self * Tardis::Decade
      end
    end
    alias_method :decades, :decade

    def century
      if self == 1
        Tardis::Century
      else
        self * Tardis::Century
      end
    end
    alias_method :centuries, :century

  end
end