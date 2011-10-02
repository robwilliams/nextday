module Nextday
  
  CUT_OFF_TIME = "16:00"
  
  class Config
    
    class << self
      attr_writer :cut_off_time
      
      def cut_off_time
        @cut_off_time || CUT_OFF_TIME
      end
      
      def cut_off_hour
        cut_off_time.split(":")[0].to_i
      end

      def cut_off_minute
        cut_off_time.split(":")[1].to_i
      end
    end
  end
end