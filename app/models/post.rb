class Post < ApplicationRecord

  belongs_to :restaurant
  
  has_many :comments
  has_many_attached :images

end
