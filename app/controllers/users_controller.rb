class UsersController < ApplicationController
  def new
   @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else 
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @user = User.all
  end
  
  def user_params
    params.require(:user).permit(:user_name,:password,:password_confirmation)
  end
end
