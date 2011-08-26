# Database foreign keys
require 'foreigner'

module Fuzion
  class Engine < Rails::Engine

     config.paths["app/models"]<< "app/models/articles"
     config.paths["app/models"]<< "app/models/requirements"

    initializer "fuzion.models.character_owner" do
      ActiveSupport.on_load(:active_record) do
        include Fuzion::Models::CharacterOwner
      end
    end
  end
end