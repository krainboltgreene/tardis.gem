class Numeric
  include(Tardis::Moment::Downscale)
  include(Tardis::Moment::Upscale)
end

class Time
  include(Tardis::Moment)
  include(Tardis::Moment::Traversal)
end

class Date
  include(Tardis::Moment)
  include(Tardis::Moment::Traversal)
end
