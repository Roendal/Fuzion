class Tools::Dice
  attr_reader :sides
  
  def initialize sides=20
    @sides = sides
  end
  
  # rolls dice and returns result as +Fixnum+
  def roll rolls=1
    return 1 + rand(sides) if rolls==1
    results = Array.new
    rolls.times do 
      results << 1 + rand(sides)
    end
    return results
  end
end