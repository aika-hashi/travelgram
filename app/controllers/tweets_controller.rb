class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
    
  end


  private
 
  def tweet_params
    params.require(:tweet).permit(:image,:price,:discount,:area_id,:day_id,:crowd_id,:agency_id,:title1,:title2,:hotel_text,:spot_text,:corona_measure1,:corona_measure2,:traffic,:fare,:local1,:local2,).merge(user_id: current_user.id)
  end
end
