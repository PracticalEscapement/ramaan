class Address < ApplicationRecord

  belongs_to :restaurant

  validates :street_address, :city, :zipcode, :state, :phone_number, :country, presence: true

end
