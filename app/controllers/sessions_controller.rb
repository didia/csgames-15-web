class SessionsController < ApplicationController
  def new
  end

  def create
  	if param[:email].present?
  		user = User.find_by_email(params[:email])
  		if user && user.authenticate(params[:password])
    		session[:user_id] = user.id
   	 		redirect_to user, :notice => "Welcome back, #{user.name}"
  		else
    		flash.now.alert = "Invalid email or password"
    		render "new"  
    	end

  end

  def delete
  end
end
