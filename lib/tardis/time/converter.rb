module Tardis
  class Time
    class Converter
      def initialize(amount, division)
        @amount = amount.to_f
        @division = division.to_s
      end

      def to_i
        @amount / Tardis::Time::Unit.new(@division).to_f
      end

      def to_seconds
        amount / SECOND.to_f
      end
      alias_method :in_seconds, :to_seconds

      def to_minutes
        amount / MINUTE.to_f
      end
      alias_method :in_minutes, :to_minutes

      def to_hours
        amount / HOUR.to_f
      end
      alias_method :in_hours, :to_hours

      def to_days
        amount / DAY.to_f
      end
      alias_method :in_days, :to_days

      def to_weeks
        amount / WEEK.to_f
      end
      alias_method :in_weeks, :to_weeks

      def to_months
        amount / MONTH.to_f
      end
      alias_method :in_months, :to_months

      def to_years
        amount / YEAR.to_f
      end
      alias_method :in_years, :to_years

      def to_decades
        amount / DECADE.to_f
      end
      alias_method :in_decades, :to_decades

      def to_centuries
        amount / CENTURY.to_f
      end
      alias_method :in_centuries, :to_centuries
    end
  end
end
