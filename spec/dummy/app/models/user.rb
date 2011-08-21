class User < ActiveRecord::Base
  acts_as_character_owner
end