module FuzionRPG 
  module Models
    autoload :CharacterOwner, 'fuzion_rpg/models/character_owner'
  end  
   class << self
    def setup
      yield self
    end
   end
   
end
module FuzionRpg
  
end

# reopen ActiveRecord and include all the above to make
# them available to all our models if they want it
require 'fuzion_rpg/engine' 