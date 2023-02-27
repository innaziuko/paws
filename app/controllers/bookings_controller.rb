class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def create
    space = Space.find_by(id: params[:space_id])
    booking = Booking.new(space: space, user: current_user, start_date: Time.now, end_date: 2.days.from_now, total_price: 1_000)
    if booking.save
      redirect_to bookings_path
    else
      flash[:notice] = "Booking is not successful"
      redirect_to space_path(space)
    end
  end

  def destroy
    space = Space.find_by(id: params[:space_id])
    booking = Booking.find_by(space: space, user: current_user)
    if booking.destroy
      flash[:notice] = "Booking is canceled"
      redirect_to spaces_path
    else
      flash[:notice] = "Booking is not canceled"
      redirect_to space_path(space)
    end
  end
end
