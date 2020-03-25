class WelcomeController < ApplicationController

  def show
    redirect_to tweets_path if user_signed_in?
  end

end
