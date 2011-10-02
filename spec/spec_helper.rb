require 'nextday'

def weekdays
  today = Date.today
  
  today += 1 while (today.wday != 1) # step forward until it's monday
  monday = today
  
  # monday, tuesday, wednesday, thursday, friday
  [monday, monday+1, monday+2, monday+3, monday+4]
end

def weekends
  saturdays + sundays
end

def saturdays
  today = Date.today
  
  today += 1 while (today.wday != 6) # step forward until it's saturday
  saturday = today
  
  saturday.step(saturday + 365, 7).to_a
end

def sundays
  today = Date.today
  
  today += 1 while (today.wday != 0) # step forward until it's sunday
  sunday = today
  
  sunday.step(sunday + 365, 7).to_a
end