# Nextday

Finds the Next Working Day even if holidays are in the way.

Extends ```Date``` to allow you to find the next working day

Nextday only checks for English public holidays at the moment, I aim to extend it to support locales in the near future.

## Usage

```ruby
Date.today.next_working_day
```

To use this with ```DateTime``` and ```Time``` convert to ```Date``` first, for instance.

```ruby
Time.now.to_date.next_working_day
DateTime.new(2030,11,30).to_date.next_working_day
```


## Installation

To use with bundler just add nextday to your gem file.

```ruby
gem 'nextday'
```
