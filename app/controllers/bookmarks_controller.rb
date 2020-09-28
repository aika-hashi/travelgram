class BookmarksController < ApplicationController
  def create
    
    @tweet = Tweet.find(params[:tweet_id])
    @trip = Trip.find(params[:trip_id])
    bookmark = @tweet.bookmarks.new(user_id: current_user.id)
    if bookmark.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  
  
   @trip = Trip.find(params[:trip_id])
    bookmark = @trip.bookmarks.new(user_id: current_user.id)
    if bookmark.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
   
  end

  def destroy
   @tweet = Tweet.find(params[:tweet_id])
    bookmark = @tweet.bookmarks.find_by(user_id: current_user.id)
    if bookmark.present?
        bookmark.destroy
        redirect_to request.referer
    else
        redirect_to request.referer
    end

  @trip = Trip.find(params[:trip_id])
    bookmark = @trip.bookmarks.find_by(user_id: current_user.id)
    if bookmark.present?
        bookmark.destroy
        redirect_to request.referer
    else
        redirect_to request.referer
    end

  end

  def show
   
  end

end
