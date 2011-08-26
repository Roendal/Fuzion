class Requirement < ActiveRecord::Base  
  belongs_to :requirer, :polymorphic => :true  
end
