tardis
--------

  - [![Version](https://badge.fury.io/rb/tardis.png)](https://rubygems.org/gems/tardis)
  - [![Climate](https://codeclimate.com/github/krainboltgreene/tardis.png)](https://codeclimate.com/github/krainboltgreene/tardis)
  - [![Build](http://img.shields.io/travis-ci/krainboltgreene/tardis.png)](https://travis-ci.org/krainboltgreene/tardis)
  - [![Dependencies](https://gemnasium.com/krainboltgreene/tardis.png)](https://gemnasium.com/krainboltgreene/tardis)
  - [![Coverage](http://img.shields.io/coveralls/krainboltgreene/tardis.png)](https://coveralls.io/r/krainboltgreene/tardis)
  - [![Gittip](http://img.shields.io/gittip/krainboltgreene.png)](https://www.gittip.com/krainboltgreene/)
  - [![License](http://img.shields.io/license/MIT.png?color=green)](http://opensource.org/licenses/MIT)

`tardis` is a gem that gives you a more english-like expression for time and space math. Despite the handy DSL `tardis` also gives you single purpose objects for handling the more complex parts of Time & Space.


Using
=====

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


Installing
==========

Add this line to your application's Gemfile:

    gem "tardis", "~> 1.0"

And then execute:

    $ bundle

Or install it yourself with:

    $ gem install tardis


Contributing
============

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request


Credits
=======

  * [Simon Hørup Eskildsen](https://github.com/Sirupsen)
  * [Henrik Enggaard](mailto: https://github.com/henrikh)
  * [James Larkby-Lahet](https://github.com/wolfwood)


Licensing
=========

Copyright (c) 2013 Kurtis Rainbolt-Greene

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
