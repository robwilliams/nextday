require_relative '../../spec_helper.rb'

describe Nextday::PUBLIC_HOLIDAYS do
  
  subject {Nextday::PUBLIC_HOLIDAYS}
  
  it { should be_a_kind_of(Hash) }

  specify "each key should be a string" do
    subject.keys.each {|key| key.should be_a_kind_of(String)}
  end
  
  specify "each value should be an array" do
    subject.values.each {|value| value.should be_a_kind_of(Array)}
  end
end