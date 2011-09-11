module Tardis::Time
  module Math
    def second
      self == 1 ? Tardis::Time::Second : self * Tardis::Time::Second
    end
    alias_method :seconds, :second

    def minute
      if self == 1
        Tardis::Time::Minute
      else
        self * Tardis::Time::Minute
      end
    end
    alias_method :minutes, :minute

    def hour
      if self == 1
        Tardis::Time::Hour
      else
        self * Tardis::Time::Hour
      end
    end
    alias_method :hours, :hour

    def day
      if self == 1
        Tardis::Time::Day
      else
        self * Tardis::Time::Day
      end
    end
    alias_method :days, :day

    def week
      if self == 1
        Tardis::Time::Week
      else
        self * Tardis::Time::Week
      end
    end
    alias_method :weeks, :week

    def month
      if self == 1
        Tardis::Time::Month
      else
        self * Tardis::Time::Month
      end
    end
    alias_method :months, :month

    def year
      if self == 1
        Tardis::Time::Year
      else
        self * Tardis::Time::Year
      end
    end
    alias_method :years, :year

    def decade
      if self == 1
        Tardis::Time::Decade
      else
        self * Tardis::Time::Decade
      end
    end
    alias_method :decades, :decade

    def century
      if self == 1
        Tardis::Time::Century
      else
        self * Tardis::Time::Century
      end
    end
    alias_method :centuries, :century
  end
end