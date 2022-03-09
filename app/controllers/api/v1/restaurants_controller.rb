module Api
  module V1
    class RestaurantsController < ApiController

      before_action :authenticate_api_v1_user!, only: [:create]

      def index
        @restaurants = Restaurant.all
      end

      def show
        @restaurant = Restaurant.find(params[:id])
      end

      def create
        #@restaurant = Restaurant.create(restaurant_params)
        respond_to do |format|
          format.json { head :ok }
         end
      end

      private

      def restaurant_params
        params.require(:restaurant).permit(
          :name, :restaurant_type, :image_url, :rating, :price
        )
      end
      
    end
  end
end