require_relative '../../spec_helper.rb'

describe Nextday::Holidays do

  describe "#find" do
    
    Nextday::Holidays.dates.each do |date|
      describe "when the date is a holiday (#{date})" do
        subject {Nextday::Holidays.find(date)}
        
        it { should be_kind_of(Nextday::Holiday) }
        it { subject.date.should eql(date) }
      end
    end
  end

  describe "#dates" do
    
    subject { Nextday::Holidays.dates }
    
    it { should be_kind_of(Array) }
    it { subject.should have_at_least(1).holiday }
    it { subject.each {|date| date.should be_a_kind_of(Date)} }
  end
end