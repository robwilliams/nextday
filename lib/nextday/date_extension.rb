module Nextday
  
  module DateExtension
    ##
    # The next working day after the current date
    # 
    # @return [Date] Next Working Day
    def next_working_day
      next_day = self + 1
    
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
      Holidays.dates.include?(self)
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
      self.wday == 6
    end if RUBY_VERSION < '1.9'
    
    ##
    # Is the current date a saturday?
    #
    # @return [Boolean]
    def sunday?
      self.wday == 0
    end if RUBY_VERSION < '1.9'
  end
end
