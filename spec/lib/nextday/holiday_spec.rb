require_relative '../../spec_helper.rb'

describe Nextday::Holiday do

  subject { Nextday::Holiday.new("Christmas Day", Date.new(2012, 12, 25)) }
  
  it { subject.name.should eql("Christmas Day")}
  it { subject.date.should eql(Date.new(2012, 12, 25))}
end