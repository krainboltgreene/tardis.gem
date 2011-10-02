module Tardis::Time::Travel
  # The .from() method is called on a Time or Date object.
  # It takes one argument, the a time object or Integer representing seconds.
  # The returned object is an Integer which represents a number of seconds
  # between that point in time and now.


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
  # anatomy: [Time|Date].from([Time|Date]) => Integer
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
