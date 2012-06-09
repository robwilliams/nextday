require 'rack'
require 'json'
require 'nextday'

module Nextday
  class JSON
    def call(env)
      [200, {"Content-Type" => "application/json"}, [data.to_json]]
    end
    
    protected
    def data(current_time = Time.now)
      {
        :cut_off_time         => Nextday::Config.cut_off_time,
        :working_day          => current_time.working_day?,
        :next_working_day     => current_time.next_working_day,
        :previous_working_day => current_time.previous_working_day,
        :despatch_day         => current_time.despatch_day,
        :delivery_day         => current_time.delivery_day
      }
    end
  end
end
