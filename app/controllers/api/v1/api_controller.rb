module Api
  module V1
    class ApiController < ActionController::Base
      include Pundit::Authorization
      skip_before_action :verify_authenticity_token

      def current_user 
        current_api_v1_user
      end
    end
  end
end