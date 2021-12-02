class AddressesController < ApplicationController

  before_action :authenticate_admin_user!

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @address = Address.new
  end
  
  def create
    restaurant = Restaurant.find(params[:restaurant_id])
    address = restaurant.addresses.build(address_params)
    if address.save
      redirect_to restaurant_path(restaurant)
    else
      redirect_to new_restaurant_address_path(restaurant), alert: "Invalid Address"
    end
  end

  private

  def address_params
    params.require(:address).permit(:street_address, :street_address_unit, 
      :city, :zipcode, :state, :country, :phone_number)
          .merge(restaurant_id: params[:restaurant_id])
  end

end
