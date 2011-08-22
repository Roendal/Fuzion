class Character < ActiveRecord::Base
  
  belongs_to :owner, :polymorphic => :true
  has_one :char_sheet
  has_many :items
  
end
