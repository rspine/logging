# Spine::Logging

[![Gem Version](https://badge.fury.io/rb/spine-logging.svg)](http://badge.fury.io/rb/spine-logging)
[![Dependency Status](https://gemnasium.com/rspine/logging.svg)](https://gemnasium.com/rspine/logging)
[![Code Climate](https://codeclimate.com/github/rspine/logging/badges/gpa.svg)](https://codeclimate.com/github/rspine/logging)
[![security](https://hakiri.io/github/rspine/logging/master.svg)](https://hakiri.io/github/rspine/logging/master)
[![Inline docs](http://inch-ci.org/github/rspine/logging.svg?branch=master)](http://inch-ci.org/github/rspine/logging)

Formatters for logger.

## Installation

To install it, add the gem to your Gemfile:

```ruby
gem 'spine-logging'
```

Then run `bundle`. If you're not using Bundler, just `gem install spine-logging`.

## Usage

```ruby
logger = Spine::Logging.get('development')
logger.info('Hey')
# [INFO 2015-05-27T10:35:27.377Z #9883] Hey
```

It is also possible to add stream for logging:

```ruby
logger = Spine::Logging.prepare(STDOUT)
```

or getting standard output:

```ruby
logger = Spine::Logging.output
```
