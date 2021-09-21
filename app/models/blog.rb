class Blog < ApplicationRecord
 has_many :comments, dependent: :destroy
 enum status: [:Seen, :In_progress, :Completed, ]
 def self.search(terms)
     if terms
       where('area LIKE ?, "#%{terms}"')
     else
       order('id desc')
   end
   end
end
