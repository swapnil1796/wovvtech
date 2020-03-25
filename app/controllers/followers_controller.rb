class FollowersController < ApplicationController

  def create
    follower = Follower.new(user_id: params[:user_id])
    follower.save
  end

  def destroy
    follower = Follower.find_by(user_id: params[:id])
    follower.destroy
  end

end
