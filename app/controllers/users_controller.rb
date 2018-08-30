class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @tweets = Tweet.where(user_id: current_user.id).order("created_at DESC")
    @user = User.find(params[:id])
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to action: 'show'
  end

  private
  def user_params
    params.require(:user).permit(:name,:email, :image)
  end
end
