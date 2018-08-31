class MinibrogController < ApplicationController

  def index
    @tweets = Tweet.order ("created_at DESC")
  end

  def new
  end

  def create
    Tweet.create(name: tweet_params[:name], text: tweet_params[:text], movie_url: tweet_params[:movie_url],user_id: current_user.id)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
      tweet = Tweet.find(params[:id])
      if tweet.user_id == current_user.id
        tweet.update(tweet_params)
      end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  private
  def tweet_params
    params.permit(:name, :text, :movie_url)
  end

end
