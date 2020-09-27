class TweetsController < ApplicationController
  def index
    # @tweets = Tweet.all.order("created_at DESC")
    # @trips = Trip.all.order("created_at DESC")

    @search = Tweet.ransack(params[:q])
    @tweet = @search.result(distinct: true).order("created_at DESC")


    @searchs = Trip.ransack(params[:q])
    @trip = @searchs.result(distinct: true).order("created_at DESC")
    

    # @tweets = Tweet.all.includes(:user)
    # @trips = Trip.all.includes(:user)
    #  @user = User.find(params[:id])
  
  end

  def new
    @tweet = Tweet.new

  end
  
  def create
    #  binding.pry
    
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to  root_path
    else
      render :new
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
    # @trip = Trip.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])

  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to tweet_path(@tweet)
    else
      render :edit
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    if @tweet.destroy
      redirect_to root_path
    end
  end

#   def bookmarks
#     @tweets = current_user.bookmark_boards.includes(:user).recent
#     @trips = current_user.bookmark_boards.includes(:user).recent
# end

  #   unless @tweet.valid?
  #     flash.now[:alert] = @tweet.errors.full_messages
  #     render :new and return
  #   end
  #   session["devise.regist_data"] = {tweet: @tweet.attributes}
  #   @trip = @tweet.build_trip
  #   redirect_to  new_trip_path
  # end

  # def create_trip
  #   @tweet = Tweet.new(session["devise.regist_data"]["tweet"])
  #   @trip = Trip.new(trip_params)
  #   unless @trip.valid?
  #     flash.now[:alert] = @trip.errors.full_messages
  #     render :new_trip and return
  #   end
  #   @tweet.build_spot(@trip.attributes)
  #   @tweet.save
  #   session["devise.regist_data"]["tweet"].clear
  #   ###
  # end

# 省略

  # protected

  # def trip_params
  #   params.require(:trip).permit(:image,:price,:discount,:area_id,:day_id,:crowd_id,:title,:spot_text,:corona_measure,:traffic,:fare,:local,).merge(user_id: current_user.id)
  # end
  private
 
  def tweet_params
    params.require(:tweet).permit(:video,:price,:discount,:day_id,:area_id,:week_id,:crowd_id,:title,:hotel_text,:corona_measure,:local, images: []).merge(user_id: current_user.id)
  end

 
end
