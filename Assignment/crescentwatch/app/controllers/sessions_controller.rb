class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      Rails.logger.debug("******** creating user session #{user.id}" )
      redirect_to moonphases_url, :notice => ""
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
    Rails.logger.debug("******** destroying user session #{session[:user_id]}" )
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
