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
    
    def self.dates
      instance.map(&:date)
    end
    
    def self.find(date)
      instance.find{ |holiday| holiday.date == date }
    end
  end
end
