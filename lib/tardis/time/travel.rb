module Tardis::Time
  module Travel
    def from(timestamp)
      self.to_i - timestamp.to_i
    end

    # The .to() method is caled on a Time or Date object.
    # It takes one argument, the a time object or Integer representing seconds.
    # The returned object is an Integer which represents a number of seconds
    # between that point in time and now
    def to(timestamp)
      timestamp.to_i - self.to_i
    end

    # The .to_now() method is called on a Time or Date object.
    # The returned object is an Integer which represents a number of seconds
    # between that point in time and now.
    def from_now
      self.from Time.new
    end

    def to_now
      self.to Time.new
    end

    def ago
      Time.new - self
    end

    def later
      Time.new + self
    end
  end
end