module Fuzion
  module Models
    module CharacterOwner
      def self.included(mod)
        mod.extend(ClassMethods)
      end

      module ClassMethods
        def acts_as_character_owner multiple=false
          if multiple
            #TODO
          else
            has_one :character, :as => :owner
          end
          include Fuzion::Models::CharacterOwner::InstanceMethods
        end
      end

      module InstanceMethods

      end
    end
  end
end