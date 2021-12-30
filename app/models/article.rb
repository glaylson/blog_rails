class Article < ApplicationRecord
    validates :title, presence: true,length: {minimum:3, maximum:20} 
    validates :body, presence: true, length: {minimum:5}
    
end
