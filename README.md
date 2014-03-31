# activemodel-attribute_changed_specification
[![Build Status](https://travis-ci.org/yasuoza/activemodel-attribute_changed_specification.png?branch=master)](https://travis-ci.org/yasuoza/activemodel-attribute_changed_specification) [![Coverage Status](https://coveralls.io/repos/yasuoza/activemodel-attribute_changed_specification/badge.png?branch=master)](https://coveralls.io/r/yasuoza/activemodel-attribute_changed_specification?branch=master) [![Code Climate](https://codeclimate.com/github/yasuoza/activemodel-attribute_changed_specification.png)](https://codeclimate.com/github/yasuoza/activemodel-attribute_changed_specification) [![Dependency Status](https://gemnasium.com/yasuoza/activemodel-attribute_changed_specification.png)](https://gemnasium.com/yasuoza/activemodel-attribute_changed_specification) [![Gem Version](https://badge.fury.io/rb/activemodel-attribute_changed_specification.png)](http://badge.fury.io/rb/activemodel-attribute_changed_specification)

Expand `_changed?` method defined in ActiveModel::Dirty. You can specify changed attribute value.

## Installation

Add this gem to your Gemfile

```
gem 'activemodel-attribute_changed_specification'
```

Install via bundle

```
$ bundle
```

## Usage

Specify value changes.

```ruby
user = User.new
user.name = 'Bob'
user.name_changed?(from: nil, to: 'Bob') # => true
user.name_changed?(from: 'Paul', to: 'Bob') # => false
```
using only from or to

```ruby
user = User.new
user.name = 'Bob'
user.name_changed?(to: 'Bob') # => true
user.name_changed?(from: 'Paul') # => false
```

You can still use original `_changed?` method.

```ruby
user = User.new
user.name = 'Bob'
user.name_changed? # => true
```

## Supports

* 3.2 <= rails < 4.1 (Rails >= supports this format by itself)
