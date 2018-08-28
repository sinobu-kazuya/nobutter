class CommentsController < ApplicationController
  before_action :set_comment
  def create
    @tweet = Tweet.find(comment_params[:tweet_id])
    @user = User.find(comment_params[:user_id])
    @comment =Comment.create(comment_params)
    # redirect_to "/tweets/#{@comment.tweet.id}"
    respond_to do |format|
      format.html { redirect_to tweet_path(params[:tweet_id])}
      format.json
    end
  end

  def destroy
    @comment = Comment.find(params[:id]) #⑤
    if @comment.destroy
      redirect_to "/tweets/#{@comment.tweet.id}"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end

  def set_comment
    @tweet = Tweet.find(params[:tweet_id])
  end
end
