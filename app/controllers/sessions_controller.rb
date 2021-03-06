class SessionsController < ApplicationController

	def new
		if current_user
		  redirect_to profile_path(current_user)
		  flash[:info] = "You logged in!"
		else
		  render :new
		end
	end

	def create
	  user = User.find_by_email(user_params[:email])
	  # if user exists AND password entered is correct
	  if user && user.authenticate(user_params[:password])
	    # save user id to session to keep them logged in
	    # when they navigate around our site
	    session[:user_id] = user.id
	    flash[:info] = "Successfully logged in."
	    redirect_to profile_path(current_user)

	  else
	    # if user's login doesn't work, send them back to the login form
	    flash[:info] = "Incorrect email or password. Please try again."
	    redirect_to login_path
	  end
	end

	def destroy
		session[:user_id] = nil
		flash[:info] = "Successfully logged out."
		redirect_to root_path
	end

	private
	  def user_params
	    params.require(:user).permit(:email, :password)
	  end
end


