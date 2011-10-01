require_relative '../../spec_helper.rb'

describe Nextday::Date do
  
  describe "#working_day?" do

    describe "on a saturday" do
      it { 
        saturdays.each { |day| Nextday::Date.new(day).working_day?.should be_false }
      }
    end
    
    describe "on a sunday" do
      it { 
        sundays.each { |day| Nextday::Date.new(day).working_day?.should be_false }
      }
    end
    
    describe "on a public holiday" do
      it { 
        Nextday::Holidays.dates.each { |day| Nextday::Date.new(day).working_day?.should be_false }
      }
    end
  end
end