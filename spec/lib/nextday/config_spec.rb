require_relative '../../spec_helper.rb'

describe Nextday::Config do

  subject { Nextday::Config }

  describe "cut_off_time" do
    
    describe "default" do
      it { subject.cut_off_time.should eql(Nextday::CUT_OFF_TIME)}
    end
    
    describe "with a new time" do
      
      before do
        Nextday::Config.cut_off_time = "18:47"
      end
      
      it { subject.cut_off_time.should eql("18:47")}
    end
  end
end