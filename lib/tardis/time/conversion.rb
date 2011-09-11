module Tardis::Time
  module Conversion
    def to_seconds
      self.to_f / Tardis::Time::Second.to_f
    end
    alias_method :in_seconds, :to_seconds

    def to_minutes
      self.to_f / Tardis::Time::Minute.to_f
    end
    alias_method :in_minutes, :to_minutes

    def to_hours
      self.to_f / Tardis::Time::Hour.to_f
    end
    alias_method :in_hours, :to_hours

    def to_days
      self.to_f / Tardis::Time::Day.to_f
    end
    alias_method :in_days, :to_days

    def to_weeks
      self.to_f / Tardis::Time::Week.to_f
    end
    alias_method :in_weeks, :to_weeks

    def to_months
      self.to_f / Tardis::Time::Month.to_f
    end
    alias_method :in_months, :to_months

    def to_years
      self.to_f / Tardis::Time::Year.to_f
    end
    alias_method :in_years, :to_years

    def to_decades
      self.to_f / Tardis::Time::Decade.to_f
    end
    alias_method :in_decades, :to_decades

    def to_centuries
      self.to_f / Tardis::Time::Century.to_f
    end
    alias_method :in_centuries, :to_centuries

  end
end