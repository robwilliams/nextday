module Nextday
  
  module DateExtension
    
    ##
    #
    def despatch_day
      if working_day?
        if to_time < cut_off_time
          to_date
        else
          next_working_day
        end
      else
        next_working_day
      end
    end
    
    def delivery_day
      despatch_day.next_working_day
    end
    
    def cut_off_time
      hour, minute = Config.cut_off_hour, Config.cut_off_minute
      
      Time.new(year, month, day, hour, minute)
    end
    
    ##
    # The next working day after the current date
    # 
    # @return [Date] Next Working Day
    def next_working_day
      next_day = to_date + 1
    
      # keep going until the next day is a working day
      while !next_day.working_day?
        next_day = next_day + 1  
      end
      
      next_day
    end

    ##
    # Is the current date a working day?
    # 
    # @return [Boolean] 
    def working_day?
      !weekend? and !public_holiday?
    end
    
    ##
    # Is the current date a public holiday?
    #
    # @return [Boolean] 
    def public_holiday?
      Holidays.dates.include?(to_date)
    end
    
    ##
    # Is the current date on the weekend?
    #
    # @return [Boolean] 
    def weekend?
      saturday? or sunday?
    end
    
    ##
    # Is the current date a saturday?
    #
    # @return [Boolean]
    def saturday?
      to_date.wday == 6
    end if RUBY_VERSION < '1.9'
    
    ##
    # Is the current date a saturday?
    #
    # @return [Boolean]
    def sunday?
      to_date.wday == 0
    end if RUBY_VERSION < '1.9'
  end
end
