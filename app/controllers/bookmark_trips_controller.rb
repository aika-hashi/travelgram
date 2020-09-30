class BookmarkTripsController < ApplicationController
def create
  @trip = Trip.find(params[:trip_id])
  bookmark_trip = @trip.bookmark_trips.new(user_id: current_user.id)
  if bookmark_trip.save
    redirect_to request.referer
  else
    redirect_to request.referer
  end

 end

def destroy
 @trip = Trip.find(params[:trip_id])
    bookmark_trip = @trip.bookmark_trips.find_by(user_id: current_user.id)
    if bookmark_trip.present?
        bookmark_trip.destroy
        redirect_to request.referer
    else
        redirect_to request.referer
    end
  end

  def show
    @bookmark = BookmarkTrip.all.order("created_at DESC")
    
  end
end
