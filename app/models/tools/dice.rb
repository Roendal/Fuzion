class Tools::Dice
  attr_reader :sides
  
  def initialize sides=20
    @sides = sides
  end
  
  # Rolls the dice and returns result as +Fixnum+ if rolls==1 or as +Array+ of +Fixnum+
  # if rolls>1.
  def roll rolls=1
    return simple_roll if rolls==1
    results = Array.new
    rolls.times do 
      results << simple_roll
    end
    return results
  end
  
  private 
  
  def simple_roll
    1 + rand(sides)
  end
end