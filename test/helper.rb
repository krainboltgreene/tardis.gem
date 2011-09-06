require 'minitest/autorun'

unless Object.const_defined? 'Tardis'
  $:.unshift File.expand_path '../../lib', __FILE__
  require 'tardis'
end