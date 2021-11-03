class HomeController < ApplicationController
  
  before_action :authenticate_user!, only: [:my_page]
  
  def index
  end

  def my_page
    @secret = current_user.email
  end
end
