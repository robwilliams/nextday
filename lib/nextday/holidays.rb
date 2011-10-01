module Nextday
  
  class Holidays
    
    def self.name(date)
      
    end
    
    def self.dates
      @@dates ||= Nextday::PUBLIC_HOLIDAYS.values.flatten.collect do |date_string| 
        ::Date.strptime(date_string, "%d/%m/%Y")
      end
    end
  end
end
