class AddressesController < ApplicationController

  def index
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @address = Address.new
  end
  
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @address = Address.create(address_params)
    redirect_to restaurants_path(@restaurant)
  end

  private

  def address_params
    params.require(:address).permit(:street_address, :street_address_unit, 
      :city, :zipcode, :state, :country, :phone_number)
          .merge(restaurant_id: params[:restaurant_id])
  end

end
