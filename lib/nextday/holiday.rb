module Nextday
  class Holiday
    
    attr_reader :name, :date
    
    def initialize(name, date)
      @name = name
      @date = date
    end
  end
end