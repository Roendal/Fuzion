class Article < ActiveRecord::Base
  
  has_many :items, :as => :owned
  self.abstract_class = true 
  
end
