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

Logging to file:

```ruby
logger = Spine::Logging.file('development')
logger.info('Hey')
# [INFO 2015-05-27T10:35:27.377Z #9883] Hey
```

Logging to standard output:

```ruby
logger = Spine::Logging.output
logger.info('Hey')
# [INFO 2015-05-27T10:35:27.377Z #9883] Hey
```

Logging to syslog:

```ruby
Spine::Logging.extend(Spine::Logging::Logs::Syslog)
logger = Spine::Logging.syslog('my_app')
logger.info('Hey')
# Hey
```
