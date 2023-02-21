class BookingsController < ApplicationController
  before_action :set_user, only: [:index]
  def index
    Booking.where(user_id: current_user.id)
  end

  private

  def set_user
    @space = User.find(params[:user_id])
  end

  def strong_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
