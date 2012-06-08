# Nextday

[![Build Status](https://secure.travis-ci.org/robwilliams/nextday.png?branch=master)](http://travis-ci.org/robwilliams/nextday)

Finds the Next Working Day even if holidays are in the way.

Extends ```Date```, ```Time``` and ```DateTime``` to allow you to find the next working day

Nextday only checks for English public holidays at the moment, I aim to extend it to support locales in the near future.

## Usage

### Find the next working day
```ruby
Date.today.next_working_day
DateTime.today.next_working_day
Time.now.next_working_day
```

### Find the previous working day
```ruby
Date.today.previous_working_day
DateTime.today.previous_working_day
Time.now.previous_working_day
```

### Is the current day a working day?
```ruby
Date.today.working_day?
DateTime.today.working_day?
Time.now.working_day?
```

### When will an item be despatched?
```ruby
Date.today.despatch_day
DateTime.today.despatch_day
Time.now.despatch_day
```

### When will an item be delivered?
```ruby
Date.today.delivery_day
DateTime.today.delivery_day
Time.now.delivery_day
```

## Configuration

To set the cut off time to a different value:

```ruby
Nextday::Config.cut_off_time = "18:47"
```

## Installation

To use with bundler add nextday to your gem file.

```ruby
gem 'nextday'
```
