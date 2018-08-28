class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @tweets = Tweet.where(user_id: current_user.id).order("created_at DESC")
  end

  private
  def user_params
    params.require(:user).permit(:name, :image)
  end
end
