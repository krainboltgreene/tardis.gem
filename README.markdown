Tardis
======

**Stable Version**: STILL IN DEVELOPMENT

`tardis` is a gem for manipulating time and space, but mostly time.
Much like it's namesake on the television series Doctor Who `tardis` provides you with a lot of tools for time.
It's core features are:

* Convenient Time Unit helpers, both for Time Unit math and converting.
* Handles both regular Time Units and SI Metric Seconds.
* Time specific helpers for traversing time periods.
* Turning time and Time Units into words for reading.
* Holidays!


Examples
--------

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

5.days.ago.from_now
# => 2445600.001
```

And a dozen other little features to make time less time consuming.


Installing
----------

**Requirements**

1. MRI 1.9.2

Installing `tardis` is as easy as using the `gem install` command:

``` bash
$ gem install tardis
```

Or using it in your `bundler` `Gemfile`:

``` ruby
gem 'tardis'
```

And then using:

``` bash
$ bundle install
```


**Testing**

To make sure you did everything right, just do the following:

``` bash
$ ruby -e 'p require "tardis"'
> true
```


Issues & Documentation
----------------------

* [Documentation](https://github.com/krainboltgreene/tardis/wiki)
* [Issues](https://github.com/krainboltgreene/tardis/issues)

Feel free to contribute to the documentation wiki if you feel something is lacking.
Remember that we really want to know if something is wrong, so use the Issue List if you have a problem.


Changelog
---------


Contributing
------------

* **Fork** the repository
* **Clone the repository** locally, or **edit via Github**
* Create a **new branch** using the [Git Flow Standard](http://yakiloo.com/getting-started-git-flow/) conventions
* Commit **often** and **when important**
* **DO NOT CHANGE** ANY OF THESE (without making a new branch for *that* change):
  * `*.gemspec`
  * `Rakefile`
  * `.rvmrc`
  * `.gitignore`
  * Any part of the git history
* **Write tests** specifically for the changes you've made, if no test exist
* **Push** your feature or hotfix branch to Github.
* Make a **Pull Request**


Credits
-------

* [sirupsen](https://github.com/sirupsen) for working on the original `time-lord`
* [wolfwood](https://github.com/wolfwood) for working on the original `time-lord`
* [henrikh](https://github.com/henrikh) for working on the original `time-lord`


License
-------

Copyright (c) 2011 Kurtis Rainbolt-Greene

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
