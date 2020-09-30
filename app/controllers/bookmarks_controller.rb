class BookmarksController < ApplicationController
  def create
    
     @tweet = Tweet.find(params[:tweet_id])
    bookmark = @tweet.bookmarks.new(user_id: current_user.id)
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

  

  end

  def show
    @bookmark = Bookmark.all.order("created_at DESC")
  end

end
