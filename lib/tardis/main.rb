class Numeric
  include(Tardis::Moment::Downscale)
  include(Tardis::Moment::Upscale)
  include(Tardis::Moment::Traversal::ForNumeric)
end

class Time
  include(Tardis::Moment)
  include(Tardis::Moment::Traversal::ForDateTime)
end

class Date
  include(Tardis::Moment)
  include(Tardis::Moment::Traversal::ForDateTime)
end
