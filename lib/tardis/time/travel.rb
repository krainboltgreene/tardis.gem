# Tardis::Time::Travel is a module for moving between points of Time.
# Specifically it gives helper methods for determining things like,
# the amount of seconds between two points of time, a date in the
# future or past by a certain amount of time, and more.
#
# Here's a list of cool things you can do with Time::Travel:
#
# * 5.days.ago
# * 2.days.ago.from_now

module Tardis
  class Time
    module Travel

      # example: time_left = next_birthday.from Date.yesterday
      # anatomy: [Time|Date].from([Time|Date]) => Integer
      # description: |
      #   Called on a Time or Date object and given a Time or Date object.
      #   Returns an Integer, representing a number of seconds between the
      #   object called on (a time in the future) and the object given (a
      #   time in the past).
      def from(timestamp)
        # Transform the time/date object (self), which represents the
        # starting point, to an integer.
        beginning = self.to_i

        # Transform the time/date object (an argument), which represents
        # the point in the
        ending = timestamp.to_i

        # Subtract the end period from the start period which will
        # return the total amount of time in seconds from the
        # start the end.
        beginning - ending
      end

      # example: @account.created_at.to Date.today
      # anatomy: [Time|Date].to([Time|Date]) => Integer
      # description: |
      #   Called on a Time or Date object and given a Time or Date object.
      #   Returns an Integer, representing a number of seconds between the
      #   object called on (a time in the past) and the object given (a
      #   time in the future).
      def to(timestamp)
        # Transform the time/date object (self), which represents the
        # starting point, to an integer.
        beginning = timestamp.to_i

        # Transform the time/date object (an argument), which represents
        # the point in the
        ending = self.to_i

        # Subtract the end period from the start period which will
        # return the total amount of time in seconds from the
        # start the end.
        beginning - ending
      end

      # example: time_left = next_birthday.from_now
      # anatomy: [Time|Date].from_now => Integer
      # description: |
      #   Called on a Time or Date object and returns an Integer,
      #   representing a number of seconds between the object
      #   called on (a time in the future) and now in time.
      def from_now
        # Call the .from() method with self as the starting point and
        # Time.new as the end
        self.from Time.new
      end

      # example: @account.created_at.to_now
      # anatomy: [Time|Date].to_now => Integer
      # description: |
      #   Called on a Time or Date object and returns an Integer,
      #   representing a number of seconds between the object
      #   called on (a time in the past) and now in time.
      def to_now
        # Call the .to() method with self as the starting point and
        # Time.new as the end
        self.to Time.new
      end

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
