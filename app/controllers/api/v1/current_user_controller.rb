module Api
  module V1
    class CurrentUserController < ApiControllerr

      def index
        if current_api_v1_user.present?
          #render json: current_api_v1_user
          @current_user = current_api_v1_user
          if current_api_v1_user.image.attached?
            @avatar = url_for(@current_user.image)
          else
            @avatar = 'No Image'
          end
          
        else 
          render json: {}, status: 401
        end
      end

    end
  end
end