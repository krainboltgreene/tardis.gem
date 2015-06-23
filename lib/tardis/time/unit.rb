module Tardis
  class Time
    class Unit
      SECOND = 1
      MINUTE = SECOND * 60
      HOUR = MINUTE * 60
      DAY = HOUR * 24
      WEEK = DAY * 7
      MONTH = WEEK * 4
      YEAR = MONTH * 12

      def initialize(name)
        @value = self.class.const_get(name.to_s.upcase)
      end

      def to_i

      end

      def to_f

      end
    end
  end
end
