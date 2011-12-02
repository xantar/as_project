class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      if user.employeed
        session[:user_id] = user.id
        redirect_to_target_or_default root_url, :notice => "Logged in successfully."
      else
        flash.now[:alert] = "You are no longer employeed"
        render :action => 'new'
      end
    else
      flash.now[:alert] = "Invalid login or password."
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "You have been logged out."
  end
end
