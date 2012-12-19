# activemodel-attribute_changed_specification
[![Build Status](https://travis-ci.org/YasuOza/activemodel-attribute_changed_specification.png?branch=master)](https://travis-ci.org/YasuOza/activemodel-attribute_changed_specification)

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
user.name_changed?(to: 'Bob') # => true
user.name_changed?(from: 'Paul') # => false
```

You can still use original `_changed?` method.

```ruby
user = User.new
user.name = 'Bob'
user.name_changed? # => true
```
