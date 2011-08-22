class Item < ActiveRecord::Base
  belongs_to :character
  belongs_to :article, :polymorphic => :true
end
