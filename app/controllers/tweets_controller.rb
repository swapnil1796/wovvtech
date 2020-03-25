class TweetsController < ApplicationController

  before_action :authenticate_user!, except: :index
  before_action :tweet, only: %i[show destroy]

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = current_user.tweets.new
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to tweet_path(@tweet)
    else
      render :new
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:description)
  end

  def tweet
    @tweet = Tweet.find(params[:id])
  end

end
