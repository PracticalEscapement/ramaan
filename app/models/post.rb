class Post < ApplicationRecord

  belongs_to :author, class_name: 'User'
  belongs_to :restaurant
  
  has_many :comments
  has_many_attached :images

end
