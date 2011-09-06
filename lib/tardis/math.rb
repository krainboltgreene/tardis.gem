module Tardis
  module Math

    alias_method :seconds, :second
    def second
      self == 1 ? Tardis::Second : self * Tardis::Second
    end

    alias_method :minutes, :minute
    def minute
      if self == 1
        Tardis::Minute
      else
        self * Tardis::Minute
      end
    end

    alias_method :hours, :hour
    def hour
      if self == 1
        Tardis::Hour
      else
        self * Tardis::Hour
      end
    end


  end
end