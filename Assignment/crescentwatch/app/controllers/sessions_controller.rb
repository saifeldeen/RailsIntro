class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.authenticate(params[:email], params[:password])
    Rails.logger.debug("******** created session user: #{session[:user_id]}" )
    if user
      session[:user_id] = user.id
      redirect_to moonphases_url, :notice => ""
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    reset_session
    redirect_to root_url
  end
end
