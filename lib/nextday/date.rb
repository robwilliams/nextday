module Nextday
  
  class Date
    
    def initialize(date)
      @date = date
    end
    
    def working_day?
      !weekend? and !public_holiday?
    end
    
    private
      def public_holiday?
        Holidays.dates.include?(@date)
      end
    
      def weekend?
        saturday? or sunday?
      end
      
      def saturday?
        @date.wday == 6
      end
      
      def sunday?
        @date.wday == 0
      end
  end
end
