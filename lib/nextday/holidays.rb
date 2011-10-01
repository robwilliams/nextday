require 'singleton'

module Nextday
  
  class Holidays
    include Enumerable
    include Singleton
    
    def initialize
      @holidays = PUBLIC_HOLIDAYS
    end
    
    def each(&block)
      @holidays.each{|holiday| block.call(holiday)}
    end
    
    ##
    # Returning all the dates holidays occur
    #
    # @return [Array] of holidays as [Date] objects
    def self.dates
      instance.map(&:date)
    end
    
    ##
    # Find the first holiday for the supplied date
    # @param [Date] format the format type, `:text` or `:html`
    # @return [Holiday] the first matching holiday for the supplied date
    def self.find(date)
      instance.find{ |holiday| holiday.date == date }
    end
  end
end
