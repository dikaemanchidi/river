class Blog < ApplicationRecord
 has_many :comments, dependent: :destroy
 validates :title, presence: true
 validates :content, presence: true
 validates :area, presence: true
 enum status: [:Seen, :In_progress, :Completed, ]
 def self.search(terms)
     if terms
       where('area LIKE ?, "#%{terms}"')
     else
       order('id desc')
   end
   end
end
