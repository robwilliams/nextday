require_relative '../../spec_helper.rb'
require 'rack/test'
require 'nextday/json'

describe Nextday::JSON do
  include Rack::Test::Methods
  
  def app
    Nextday::JSON.new
  end

  before do
    get '/'
  end

  it { last_response.should be_ok }

  it { last_response.header["Content-Type"].should eql("application/json") }

  it "should return the correct json" do 
    current_time = Time.now
    JSON.parse(last_response.body).should eql({
      "cut_off_time"         => Nextday::Config.cut_off_time,
      "working_day"          => current_time.working_day?,
      "next_working_day"     => current_time.next_working_day.to_s,
      "previous_working_day" => current_time.previous_working_day.to_s,
      "despatch_day"         => current_time.despatch_day.to_s,
      "delivery_day"         => current_time.delivery_day.to_s
    }) 
  end
end
