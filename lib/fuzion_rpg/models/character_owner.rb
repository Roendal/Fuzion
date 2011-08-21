module FuzionRPG
  module Models
    module CharacterOwner
      def self.included(mod)
        mod.extend(ClassMethods)
      end

      module ClassMethods
        def acts_as_character_owner multiple=false
          if multiple
            has_many :characters
            has_one :active_character, :class_name => 'Character', :conditions => ['active = ?', true]
          else
            has_one :character
          end
          include FuzionRPG::Models::CharacterOwner::InstanceMethods
        end
      end

      module InstanceMethods

      end
    end
  end
end