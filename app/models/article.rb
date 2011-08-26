class Article < ActiveRecord::Base
  self.abstract_class = true 
  
  has_many :items, :as => :owned
  has_many :requirements, :as => :requirer
  
end
