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
    @trip = Trip.find(params[:id])
  end
      

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    if @trip.destroy
      redirect_to root_path
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:video,:price,:discount,:area_id,:week_id,:crowd_id,:title,:spot_text,:corona_measure,:traffic,:fare,:local,  images: []).merge(user_id: current_user.id)
  end
  
end
