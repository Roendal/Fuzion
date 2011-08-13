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
  
  # Returns the dice as a string with the format Dx, where x is the number of sides. Example "D6", "D20", "D100", etc.
  def to_s
    return "D#{@sides}"
  end
  
  # Return true if the dices are equal, i.e. they have the same number of sides.
  def equals dice
    return true if dice.sides==@sides
    return false
  end
  
  private 
  
  def simple_roll
    1 + rand(sides)
  end
end