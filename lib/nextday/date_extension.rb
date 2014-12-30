module Nextday
  module DateExtension
    ##
    # The day an item or service will be despatched.
    # If the warehouse closes at say 4:00pm then this will
    # be taken into account and the despatch day will be the 
    # next working day.
    #
    # @return [Date] 
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

    ##
    # The next working day after an item has been despatched.
    #
    # @return [Date]
    def delivery_day
      despatch_day.next_working_day
    end

    def cut_off_time
      hour, minute = Config.cut_off_hour, Config.cut_off_minute

      utc_offset = self.utc_offset  unless not self.respond_to?(:utc_offset)
      Time.new(year, month, day, hour, minute, 0, utc_offset)
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
    # The previous working day before the current date
    # 
    # @return [Date] Previous Working Day
    def previous_working_day
      previous_day = to_date - 1

      # keep going until the next day is a working day
      while !previous_day.working_day?
        previous_day = previous_day - 1  
      end

      previous_day
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
  end
end
