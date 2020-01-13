module Tardis
  module Moment
    module Traversal
      module ForNumeric
        # example: 5.days.ago
        # anatomy: [Integer].ago => Time
        # description: |
        #   Called on an Integer object and returns an Time object, which
        #   represents the point in time before the given amount of seconds.
        def ago
          # Subtract the Integer from Time.new
          Time.new - self
        end

        # example: 5.days.later
        # anatomy: [Integer].later => Time
        # description: |
        #   Called on an Integer object and returns an Time object, which
        #   represents the point in time after the given amount of seconds.
        def later
          # Add the Integer to Time.new
          Time.new + self
        end
      end
    end
  end
end
