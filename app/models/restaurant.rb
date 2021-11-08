class Restaurant < ApplicationRecord

  has_many :addresses
  has_many :posts

end
