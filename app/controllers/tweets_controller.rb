class TweetsController < ApplicationController
  before_action :authenticate_user!
  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end
  def new
    @tweet = Tweet.new
  end
  def create
    @tweet = Tweet.new(text: tweet_params[:text], image: tweet_params[:image], name: tweet_params[:name], user_id: current_user.id)
    @tweet.save
  end
  def destroy
  end
  def edit
  end
  def update
  end
  def show
    @tweet = Tweet.find(params[:id])
  end

  private

  def tweet_params
    params.require(:tweet).permit(:text, :image, :name).merge(user_id: current_user.id)
  end

end
