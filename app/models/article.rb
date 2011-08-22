class Article < ActiveRecord::Base
  
  has_many :articles, :as => :article
  
end
