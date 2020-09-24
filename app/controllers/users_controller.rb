class UsersController < ApplicationController



def index
  @tweets = Tweet.all.order("created_at DESC")
  @trips = Trip.all.order("created_at DESC")
  @tweet = Tweet.find(params[:id])
  @trip = Trip.find(params[:id])
  
end

def show
  @tweets = Tweet.all.order("created_at DESC")
  @trips = Trip.all.order("created_at DESC")

  # @tweet = Tweet.find(params[:id])
  # @trip = Trip.find(params[:id])
  
  #  if user_signed_in? 
  #   redirect_to user_path(current_user.id)
  # else
  #   render root_path
  # end    

end

end




