class Item < ActiveRecord::Base
  
  scope :owned_by, lambda { |owner|
    where(:character_id => owner.id)
  } 
  scope :with_article, lambda { |article|
    where(:article_id => article.id,:article_type => article.class.to_s)
  }
  
  belongs_to :owner, :class_name => "Character", :foreign_key => "owner_id"
  belongs_to :owned, :polymorphic => :true
end
