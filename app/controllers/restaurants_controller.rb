class RestaurantsController < ApplicationController
  
  before_action :authenticate_admin_user!

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name, :restaurant_type, :image_url, :rating, :price
    )
  end
end
