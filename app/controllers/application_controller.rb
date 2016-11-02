class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_action :set_current_user
  helper_method :current_user

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
  
  def set_current_user
    if current_user.blank?
      redirect_to root_path
    end
  end

end
