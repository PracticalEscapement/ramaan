class Restaurant < ApplicationRecord

  has_many :addresses, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :name, :restaurant_type, :image_url, :rating, :price, presence: true
end
