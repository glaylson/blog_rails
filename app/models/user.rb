class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  devise :confirmable, 
         :database_authenticatable, 
         :recoverable, 
         :registerable,         
         :rememberable, 
         :trackable,
         :validatable
                                    
end
