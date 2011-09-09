module Tardis
  module Convert
    def to_seconds
      self.to_f / Tardis::Second.to_f
    end

    def to_minutes
      self.to_f / Tardis::Minute.to_f
    end

    def to_hours
      self.to_f / Tardis::Hour.to_f
    end

    def to_days
      self.to_f / Tardis::Day.to_f
    end

    def to_weeks
      self.to_f / Tardis::Week.to_f
    end
  end
end