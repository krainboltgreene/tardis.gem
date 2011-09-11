module Tardis::Time
  module Travel
    def from(timestamp)

    end

    def to(timestamp)
      timestamp - self
    end

    def from_now
      self.from Time.new
    end

    def to_now
      self.to Time.new
    end

    def ago

    end
  end
end