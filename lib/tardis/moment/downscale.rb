module Tardis
  module Moment
    module Downscale
      def to_seconds
        downscale_to(Tardis::Moment::SECOND)
      end
      alias_method :in_seconds, :to_seconds

      def to_minutes
        downscale_to(Tardis::Moment::MINUTE)
      end
      alias_method :in_minutes, :to_minutes

      def to_hours
        downscale_to(Tardis::Moment::HOUR)
      end
      alias_method :in_hours, :to_hours

      def to_days
        downscale_to(Tardis::Moment::DAY)
      end
      alias_method :in_days, :to_days

      def to_weeks
        downscale_to(Tardis::Moment::WEEK)
      end
      alias_method :in_weeks, :to_weeks

      def downscale_to(unit)
        self.to_f / unit.to_f
      end
      private :downscale_to
    end
  end
end
