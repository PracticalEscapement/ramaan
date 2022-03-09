module Api
  module V1
    class CurrentUserController < ApiController

      def index
        if current_api_v1_user.present?
          render json: current_api_v1_user
        else 
          render json: {}, status: 401
        end
      end

    end
  end
end