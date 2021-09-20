class Blog < ApplicationRecord
 has_many :comments, dependent: :destroy
 def self.search(terms)
     if terms
       where('area LIKE ?, "#%{terms}"')
     else
       order('id desc')
   end
   end 
end
