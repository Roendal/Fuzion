class Tools::Throw
  attr_reader :dices, :offset
  
  def initialize dices, offset=0
    @dices = dices
    @offset = offset
  end
  
  # Rolls the dices, add the offset and returns result as +Fixnum+ if rolls==1 or as 
  # +Array+ of +Fixnum+ if rolls>1.
  def roll rolls=1, detailed=false
    return simple_roll if rolls==1 and !detailed
    return detailed_roll if rolls==1 and detailed
    results = Array.new
    rolls.times do 
      results << simple_roll if !detailed
      results << detailed_roll if detailed
    end
    return results
  end
  
  private 
  
  def simple_roll
    total = 0
    dices.each do |dice|
      total+= dice.roll
    end
    return total
  end
  
  def detailed_roll
    results = Array.new
    total = 0
    dices.each do |dice|
      roll = dice.roll
      total+= roll
      results << roll
    end
    detailed_throw = Array.new
    detailed_throw[0] = total
    detailed_throw[1] = results
    return detailed_throw
  end
end