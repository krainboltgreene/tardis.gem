module Tardis::Time::Travel
  # The .from() method is called on a Time or Date object.
  # It takes one argument, the a time object or Integer representing seconds.
  # The returned object is an Integer which represents a number of seconds
  # between that point in time and now.
  def from(timestamp)
    # Transforming the time/date object (self) to an integer.
    beginning = self.to_i

    # Transforming the time/date object given to an integer.
    ending = timestamp.to_i

    # Subtract the end period from the start period which will
    # return the total amount of time in seconds from the
    # start the end.
    beginning - ending
  end

  # The .to() method is called on a Time or Date object.
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
