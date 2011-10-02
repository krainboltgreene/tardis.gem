module Tardis::Time::Math
  units = %w[second minute hour day week month year decade century]
  units.each do |u|
    self.send :define_method, u do
      unit = Tardis::Time.const_get(u.capitalize.to_sym)
      self == 1 ? unit : self * unit
    end
  end
  alias_method :seconds, :second
  alias_method :minutes, :minute
  alias_method :hours, :hour
  alias_method :days, :day
  alias_method :weeks, :week
  alias_method :months, :month
  alias_method :years, :year
  alias_method :decades, :decade
  alias_method :centuries, :century
end
