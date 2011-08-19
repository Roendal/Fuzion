require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')



describe Tools::CheckRoll do
  describe "basic funtionality" do
    before do
      @dice = [Tools::Die.new(20),Tools::Die.new(6),Tools::Die.new(20),Tools::Die.new(4),Tools::Die.new(20),
        Tools::Die.new(100),Tools::Die.new(4),Tools::Die.new(100)]
      @offset = 3
      @throw = Tools::Throw.new @dice,@offset
      @threshold = 20

      @check_roll = Tools::CheckRoll.new @throw, @threshold
    end

    it "should create a CheckRoll" do
      assert @check_roll
    end

    it "should roll a CheckRoll" do
      roll = @check_roll.roll
      assert roll
      assert roll[0]
      assert roll[1]
    end
  end

  it "should do a detailed roll of a Throw once" do
    detailed_roll = @throw.roll 1, true
    assert detailed_roll
    assert detailed_roll[0]
    assert detailed_roll[1]
    detailed_roll[1].each do |result|
      assert result
    end
  end

  it "should do a simple roll of a Throw many times" do
    results = @throw.roll 30
    assert results
    results.each do |result|
      assert result
    end
  end

  it "should do a detailed roll of a Throw many times" do
    detailed_rolls = @throw.roll 30, true
    assert detailed_rolls
    detailed_rolls.each do |detailed_roll|
      assert detailed_roll[0]
      assert detailed_roll[1]
      detailed_roll[1].each do |result|
        assert result
      end
    end
  end

  it "should turn a Throw into a String" do
    assert @throw.to_s.eql? "2D4,1D6,3D20,2D100+3"
  end

end
