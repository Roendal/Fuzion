module Fuzion
  class DiceSystem
    class << self
      def basic_throw
        return Tools::Throw.new [Tools::Die.new(10)] if Fuzion.dice_system.eql? :interlock
        return Tools::Throw.new [Tools::Die.new(6),Tools::Die.new(6),Tools::Die.new(6)] if Fuzion.dice_system.eql? :hero
        return nil
      end
    end
  end
end