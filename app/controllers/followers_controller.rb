class FollowersController < ApplicationController

  def create
    follower = Follower.new(user_id: params[:user_id])
    follower.save
  end

  def destroy
    follower = Follower.find(id)
    follower.destroy
  end

end
