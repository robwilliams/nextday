module Nextday
  ##
  # Bank and public holidays in England and Wales
  # Includes substitute days if holiday lands on a weekend
  # http://www.direct.gov.uk/en/Employment/Employees/Timeoffandholidays/DG_073741
  #
  BANK_AND_PUBLIC_HOLIDAYS_ENGLAND_AND_WALES = [
    Holiday.new("Spring Bank Holiday", Date.new(2011, 5, 30)),
    Holiday.new("Spring Bank Holiday", Date.new(2012, 6, 4)),
    Holiday.new("Spring Bank Holiday", Date.new(2013, 5, 27)),
    Holiday.new("Spring Bank Holiday", Date.new(2014, 5, 26)),
    Holiday.new("Spring Bank Holiday", Date.new(2015, 5, 25)),
    
    Holiday.new("Early May Bank Holiday", Date.new(2011, 5, 2)),
    Holiday.new("Early May Bank Holiday", Date.new(2012, 5, 7)),
    Holiday.new("Early May Bank Holiday", Date.new(2013, 5, 6)),
    Holiday.new("Early May Bank Holiday", Date.new(2014, 5, 5)),
    Holiday.new("Early May Bank Holiday", Date.new(2015, 5, 4)),
    
    Holiday.new("Queen's Diamond Jubilee", Date.new(2012, 6, 5)),
    
    Holiday.new("Good Friday", Date.new(2011, 4, 22)),
    Holiday.new("Good Friday", Date.new(2012, 4, 06)),
    Holiday.new("Good Friday", Date.new(2013, 3, 29)),
    Holiday.new("Good Friday", Date.new(2014, 4, 18)),
    Holiday.new("Good Friday", Date.new(2015, 4, 3)),
    
    Holiday.new("Summer Bank Holiday", Date.new(2011, 8, 29)),
    Holiday.new("Summer Bank Holiday", Date.new(2012, 8, 27)),
    Holiday.new("Summer Bank Holiday", Date.new(2013, 8, 26)),
    Holiday.new("Summer Bank Holiday", Date.new(2014, 8, 25)),
    Holiday.new("Summer Bank Holiday", Date.new(2015, 8, 31)),
    
    Holiday.new("New Year's Day", Date.new(2011, 1, 3)),
    Holiday.new("New Year's Day", Date.new(2012, 1, 2)),
    Holiday.new("New Year's Day", Date.new(2013, 1, 1)),
    Holiday.new("New Year's Day", Date.new(2014, 1, 1)),
    Holiday.new("New Year's Day", Date.new(2015, 1, 1)),
    
    Holiday.new("Christmas Day", Date.new(2011, 12, 26)),
    Holiday.new("Christmas Day", Date.new(2012, 12, 25)),
    Holiday.new("Christmas Day", Date.new(2013, 12, 25)),
    Holiday.new("Christmas Day", Date.new(2014, 12, 25)),
    Holiday.new("Christmas Day", Date.new(2015, 12, 25)),
    
    Holiday.new("Easter Monday", Date.new(2011, 4, 25)),
    Holiday.new("Easter Monday", Date.new(2012, 4, 9)),
    Holiday.new("Easter Monday", Date.new(2013, 4, 1)),
    Holiday.new("Easter Monday", Date.new(2014, 4, 21)),
    Holiday.new("Easter Monday", Date.new(2015, 4, 6)),
    
    Holiday.new("Boxing Day", Date.new(2011, 12, 27)),
    Holiday.new("Boxing Day", Date.new(2012, 12, 26)),
    Holiday.new("Boxing Day", Date.new(2013, 12, 26)),
    Holiday.new("Boxing Day", Date.new(2014, 12, 26)),
    Holiday.new("Boxing Day", Date.new(2015, 12, 28))
  ]
  
  PUBLIC_HOLIDAYS = BANK_AND_PUBLIC_HOLIDAYS_ENGLAND_AND_WALES
end