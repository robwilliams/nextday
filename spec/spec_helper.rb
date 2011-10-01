require 'nextday'

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