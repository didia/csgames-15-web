class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:email].present?
	  user = User.find_by_email(params[:email])
	      if user && user.authenticate(params[:password])
		session[:user_id] = user.id
			redirect_to user_url(user), :notice => "Welcome back, #{user.name}"
	      else
		flash.now.alert = "Invalid email or password"
		render "new"  
  
	      end
	 else
	  render "new" 
	  
	end
    
   

  end

  def delete
  	reset_session
  	redirect_to root_path
  end
end
