class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render `edit`
    end
  end



  private

  def user_params
    params[:user].permit(:name, :age, :address, :hobby, :language, :ide, :weight, :height, :password)
  end

end
