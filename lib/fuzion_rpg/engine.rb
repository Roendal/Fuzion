# Database foreign keys
require 'foreigner'

module Fuzion
  class Engine < Rails::Engine
    initializer "fuzion_rpg.models.character_owner" do
      ActiveSupport.on_load(:active_record) do
        include Fuzion::Models::CharacterOwner
      end
    end
  end
end