Installing
==========

**Requirements**

1. MRI 1.9.2

Installing `tardis` is as easy as using the `gem install` command:

``` terminal
$ gem install tardis
```

Or using it in your `bundler` `Gemfile`:

``` ruby
gem 'tardis'
```

And then using:

``` terminal
$ bundle install
```


**Testing**

To make sure you did everything right, just do the following:

```
$ ruby -e 'p require "tardis"'
> true
```