require 'tardis'

current_time = Time.now

puts "The current time is #{current_time}..."
puts "...in seconds since epoch: #{current_time.to_i}"
puts "...in minutes since epoch: #{current_time.to_i.to_minutes}"
puts "#{1.second}"
puts "#{1.second.to_minutes}"