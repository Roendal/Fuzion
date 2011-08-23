class CharSheet < ActiveRecord::Base

  belongs_to :character

  before_create :update_stats
  def update_stats
    self.stun = self.body*5
    self.hits = self.body*5
  end

  def get_characteristic name
    name = name.to_s.downcase.strip.gsub(' ', '_').gsub(/[^\w-]/, '')
    case name
    when "int", "intelligence"
      return self.int
    when "pre", "presence"
      return self.pre
    when "will", "willpower"
      return self.will
    when "tech", "technique"
      return self.tech
    when "move", "movement"
      return self.move
    when "run"
      return self.move*2
    when "sprint"
      return self.move*3
    when "leap"
      return self.move
    when "swim"
      return self.move
    when "ref", "reflexes"
      return self.ref
    when "dex", "dexterity"
      return self.dex
    when "str", "strength"
      return self.str
    when "con", "constitution"
      return self.con
    when "body"
      return self.body
    when "sd","stun_defense"
      return self.con*2
    when "stun"
      return self.stun
    when "total_stun","stun_max"
      return self.body*5
    when "hits"
      return self.hits
    when "total_hits", "hits_max"
      return self.body*5
    when "rcv", "recovery"
      return self.str + self.con
    when "res", "resistance"
      return self.will*3
    when "luck"
      return self.int + self.ref
    when "end", "endurance"
      return self.con*10
    when "ed", "energy_defense"
      return self.con*2
    when "spd", "speed"
      return self.ref*0.5
    when "hum", "humanity"
      return self.will*10
    else
    return nil
    end
  end
  alias :get_c :get_characteristic

end
