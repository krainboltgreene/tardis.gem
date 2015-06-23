USING
-----

You can use the `tardis` DSL to do some things you'd normally do with `active_support` and more, like:

``` ruby
1.week
20.days.ago
20.days.later
```

And some extra ones that `active_support` doesn't cover:

``` ruby
1.week.from(Time.now)
10.years.to(Date.tomorrow)
100000.seconds.to_days
```

In `tardis` you aslo have nice Period objects:

``` ruby
1.hour.ago.class #=> <Tardis::Period @beginning=2013-03-03 23:44:59 -0800, @ending=2013-03-04 00:44:59 -0800>
```

Periods, if forced into strings or integers, represent the number of seconds between the two points

``` ruby
1.hour.ago.to_i #=> -3600
```

Obviously Periods act a lot like a Range and can be coerced into one:

``` ruby
1.hour.ago.to_range #=> 1362383339..1362386939
```

You may have noticed the negative integer from `Period#to_i`.
This represents the period beginning before the ending.
The reverse comes from using `Period#from_now`:

``` ruby
1.hour.from_now.to_i #=> 3600
```

Periods also have a special `Period#to_words` method:

``` ruby
1.hour.ago.to_words #=> "1 hour ago"
200.minutes.ago.to_words #=> "3 hour ago"
```

Time is fun.
