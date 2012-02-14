require_relative '../../../spec_helper.rb'

describe Date do
  
  describe "#despatch_day" do
    
    describe "before cut_off_time" do

      weekdays.each do |date|
                # on a Monday..Friday
        describe "on a #{date.strftime('%A')}" do
          
          subject { Time.new(date.year, date.month, date.day, 0, 0).despatch_day.to_date }
          
          it "should be the same day" do
            should eql(date)
          end
        end
      end
    end

    describe "after_cut_off_time" do
      weekdays.each do |date|
                # on a Monday..Friday
        describe "on a #{date.strftime('%A')}" do
          
          subject { Time.new(date.year, date.month, date.day, Nextday::Config.cut_off_hour + 1) }
          
          it "should be the next working day" do
            subject.despatch_day.to_date.should eql(subject.next_working_day)
          end
        end
      end
    end
  end
  
  describe "#delivery_day" do
    
    subject { Time.now.despatch_day }
    
    it "should be the next working day after the despatch day" do
      subject.delivery_day.should eql(subject.despatch_day.next_working_day)
    end
  end
  
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
  
  describe "#previous_working_day" do
    
    subject {Date.today.previous_working_day}
    
    it {should be_kind_of(Date)}
    it {should_not eql(Date.today)}
    it {should be_a_working_day }
    
    describe "on a saturday" do
      it { 
        saturdays.each { |date| date.previous_working_day.should be_a_working_day }
      }
    end
    
    describe "on a sunday" do
      it { 
        sundays.each { |date| date.previous_working_day.should be_a_working_day }
      }
    end
    
    describe "on a public holiday" do
      it { 
        Nextday::Holidays.dates.each { |date| date.previous_working_day.should be_a_working_day }
      }
    end
  end
end