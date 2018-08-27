class CommentsController < ApplicationController
  before_action :set_comment
  def create
    @tweet = Tweet.find(comment_params[:tweet_id])
    @user = User.find(comment_params[:user_id])
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end

  def set_comment
    @tweet = Tweet.find(params[:tweet_id])
  end
end
