module Tardis
  module Moment
    module Upscale
      def second
        upscale_to(Tardis::Moment::SECOND)
      end
      alias_method :seconds, :second

      def minute
        upscale_to(Tardis::Moment::MINUTE)
      end
      alias_method :minutes, :minute

      def hour
        upscale_to(Tardis::Moment::HOUR)
      end
      alias_method :hours, :hour

      def day
        upscale_to(Tardis::Moment::DAY)
      end
      alias_method :days, :day

      def week
        upscale_to(Tardis::Moment::WEEK)
      end
      alias_method :weeks, :week

      def upscale_to(unit)
        self * unit
      end
      private :upscale_to
    end
  end
end
