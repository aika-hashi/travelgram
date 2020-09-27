class BookmarksController < ApplicationController
  def create
    # bookmark = current_user.bookmarks.build(tweet_id: params[:tweet_id])
    # bookmark.save!
    # redirect_to root_path, success: t('.flash.bookmark')

    # bookmark = current_user.bookmarks.build(trip_id: params[:trip_id])
    # bookmark.save!
    # redirect_to root_path, success: t('.flash.bookmark')
  end

  def destroy
    # current_user.bookmarks.find_by(tweet_id: params[:tweet_id]).destroy!
    # redirect_to root_path, success: t('.flash.not_bookmark')

    # current_user.bookmarks.find_by(trip_id: params[:trip_id]).destroy!
    # redirect_to root_path, success: t('.flash.not_bookmark')
  end
end
