class ApplicationController < ActionController::Base

  def authenticate_admin_user!
    authenticate_user!
    unless current_user.is_admin?
      sign_out(current_user)
      redirect_to root_path
    end
  end

end
