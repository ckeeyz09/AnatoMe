class UsersController < ApplicationController
  def new
    if current_user
      redirect_to profile_path(current_user)
    else
      @user = User.new
      render :new
    end
  end

  def create 
    @user = User.new(user_params) 
    # before :save, :set_fullname
    if @user.save 
     session[:user_id] = @user.id 
     redirect_to profile_path(current_user) 
    else 
     redirect_to signup_path 
     flash[:danger] = @user.errors.full_messages.join(" , ")
    end 
  end

  def profile
    @user = User.find(session[:user_id])  
  end

  def show
    @user = User.friendly.find(params[:username])
    @time = @user.created_at.to_date.to_formatted_s(:long)
  end

  def edit 
    id = params[:id]
    @user = User.friendly.find(params[:id])
    render :edit
  end

  def update
    id = params[:id]
    user = User.friendly.find(params[:id])
    if user && user.authenticate(user_params[:password])
      current_user.update_attributes(user_params)
      redirect_to profile_path(current_user)
    else
      redirect_to edit_user_path(current_user)
      flash[:info] = "Password is incorrect"
    end
  end

  # def user_params
  #   params.require(:user).permit(:username, :email, :password, :password_confirmation)
  # end

  private 

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :location, :username, :weight, :height, :bmi, :bfp, :goal, :avatar)
    end

    def page_user
      @page_user = User.friendly.find(params[:username])
    end
    helper_method :page_user

end
