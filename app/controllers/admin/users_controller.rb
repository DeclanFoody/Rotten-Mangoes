class Admin::UsersController < ApplicationController
  
  before_action :require_admin

def index
  @users = User.all.page(params[:page]).per(10)
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])

  if @user.update_attributes(user_params)
    redirect_to admin_user_path(@user)
  else
    render :edit
  end
end

def destroy
 @user = User.find(params[:id])
 @user.destroy
 redirect_to admin_users_path
end

def require_admin
  unless current_user.admin
    redirect_to root_path, notice: "must be admin to access page" 
  end
end

 protected

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password, :password_confirmation, :admin) 
  end

end
