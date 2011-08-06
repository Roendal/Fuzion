require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Tools::Dice do
  
  before do
    @dice = Tools::Dice.new
  end  
  
  it "should create a Dice" do
    assert @dice
  end
  
  it "should roll a Dice" do
    assert @dice.roll
  end  
  
end
