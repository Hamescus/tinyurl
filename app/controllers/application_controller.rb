class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found
    render 'not_found'
  end

  def logged_user
    @logged_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :logged_user

  def authorize
    redirect_to '/login' unless logged_user
  end

end
