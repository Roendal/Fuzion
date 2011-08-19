# Database foreign keys
require 'foreigner'

module FuzionRPG
  class Engine < Rails::Engine
=begin    
    initializer "fuzion_rpg.models.*whatever*" do
      ActiveSupport.on_load(:active_record) do
        include FuzionRPG::Models::Whatever
      end
    end
=end
  end
end