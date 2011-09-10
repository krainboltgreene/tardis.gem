Examples
========

As explained above here's a few of the features that really makes the `tardis` twirl:

``` ruby
4000.centuries
# => 11612160000000

46.days.to_hours
# => 1104.0

14.kiloseconds
# => 14000

Time.yesterday.to 4.days.from_now
# => 432000.000007

Time.tomorrow.from_now.in_words
# => "1 day from now"

Time.last_christmas.to Time.tomorrow
# => 2445600.001
```

And a dozen other little features to make time less time consuming.
