class TripCommentsController < ApplicationController
  def create
    comment = TripComment.create(tripcomment_params)
    redirect_to "/trips/#{comment.trip.id}"  # コメントと結びつくツイートの詳細画面に遷移する
  end

  private
  def tripcomment_params
    params.require(:trip_comment).permit(:text).merge(user_id: current_user.id, trip_id: params[:trip_id])
  end
end
