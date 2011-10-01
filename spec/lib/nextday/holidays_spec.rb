require_relative '../../spec_helper.rb'

describe Nextday::Holidays do
  
  describe "#name" do
    
    Nextday::PUBLIC_HOLIDAYS.each do |holiday_name, dates|
      
      dates.each do |date|
        it {Nextday::Holidays.name(::Date.strptime(date, "%d/%m/%Y")).should eql(holiday_name)}
      end
    end
  end
  
  describe "#dates" do
    
    subject {Nextday::Holidays.dates}
    
    it { should be_kind_of(Array) }

    it { subject.each {|date| date.should be_a_kind_of(Date)} }

    it "should return all the dates that are in Nextday::PUBLIC_HOLIDAYS" do
      total_dates = Nextday::PUBLIC_HOLIDAYS.values.flatten.length
      subject.length.should eql(total_dates)
    end
  end
end