class UsersController < ApplicationController

def index
  @tweets = Tweet.all.order("created_at DESC")
  @trips = Trip.all.order("created_at DESC")
end

def show
  @tweets = Tweet.all.order("created_at DESC")
  @trips = Trip.all.order("created_at DESC")
end

end




