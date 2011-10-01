require_relative '../../../spec_helper.rb'

describe Date do
  
  describe "#working_day?" do
    
    describe "on a saturday" do
      it { 
        saturdays.each { |date| date.should_not be_a_working_day }
      }
    end
    
    describe "on a sunday" do
      it { 
        sundays.each { |date| date.should_not be_a_working_day }
      }
    end
    
    describe "on a public holiday" do
      it {
        Nextday::Holidays.dates.each { |date| date.should_not be_a_working_day }
      }
    end
  end
  
  describe "#next_working_day" do
    
    subject {Date.today.next_working_day}
    
    it {should be_kind_of(Date)}
    it {should_not eql(Date.today)}
    it {should be_a_working_day }
    
    describe "on a saturday" do
      it { 
        saturdays.each { |date| date.next_working_day.should be_a_working_day }
      }
    end
    
    describe "on a sunday" do
      it { 
        sundays.each { |date| date.next_working_day.should be_a_working_day }
      }
    end
    
    describe "on a public holiday" do
      it { 
        Nextday::Holidays.dates.each { |date| date.next_working_day.should be_a_working_day }
      }
    end
  end
end