class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
  private
  
  def current_user
    Rails.logger.debug("********  (current_user) session user_id: #{session[:user_id]}" )
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    Rails.logger.debug("********  (current user): #{@current_user}" )
    @current_user
  end
end
