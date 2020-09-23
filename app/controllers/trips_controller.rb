class TripsController < ApplicationController
  def index
    @trips = Trip.all.order(created_at: :desc)
  end  


  def new
    @trip = Trip.new
  
  end

  def create
    @trip = Trip.new(trip_params)
    
    if @trip.save
      redirect_to  root_path
    else 
      render :new
    end
  end
  
  
  def show
    
  end
      

  private

  def trip_params
    params.require(:trip).permit(:video,:price,:discount,:area_id,:week_id,:crowd_id,:title,:spot_text,:corona_measure,:traffic,:fare,:local,  images: []).merge(user_id: current_user.id)
  end
  
end
