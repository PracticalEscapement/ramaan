module RestaurantsHelper

  def full_address(address)
    "#{address.street_address}, #{address.city}
     #{address.state} #{address.zipcode}, #{address.phone_number}"
  end

end
