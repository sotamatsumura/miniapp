class RetweetController < ApplicationController

  def create
    Tweet.create(name: params[:name], text: params[:text], user_id: current_user.id)
  end

end
