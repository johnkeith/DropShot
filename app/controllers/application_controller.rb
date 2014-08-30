class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :authenticate_user!, :current_user

  def current_user
    user_id = session[:user_id]
    @current_user ||= User.find(user_id) if user_id.present?
  end

  def authenticate_user!
    redirect_to root_path unless current_user.present?
  end

  def set_current_user(user)
    session[:user_id] = user.id
  end
end
