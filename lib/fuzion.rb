module Fuzion
  module Models
    autoload :CharacterOwner, 'fuzion/models/character_owner'
  end
  
  mattr_accessor :campaign_levels
  @@campaign_levels = [:everyday, :competent, :heroic, :incredible, :legendary, :superheroic]
  
  mattr_accessor :characteristics_points
  @@characteristics_points = {:everyday => 20,:competent => 30, :heroic => 50, :incredible => 60, :legendary => 80, :superheroic => 100}

  mattr_accessor :option_points
  @@option_points = {:everyday => 25,:competent => 35, :heroic => 45, :incredible => 55, :legendary => 65, :superheroic => 75}

  class << self
    def setup
      yield self
    end
  end
end

# reopen ActiveRecord and include all the above to make
# them available to all our models if they want it
require 'fuzion/engine' 