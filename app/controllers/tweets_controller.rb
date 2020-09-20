class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end


  private

  def message_params
    params.require(:tweet).permit(:image).merge(user_id: current_user.id)
  end
end
