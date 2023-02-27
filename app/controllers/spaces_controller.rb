class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_space, only: %I[edit update show destroy]


  def index
    @spaces = []
    checkin = params[:checkin]
    checkout = params[:checkout]
    if checkin.present? && checkout.present?
      spaces = Space.where("start_date <= ? AND end_date >= ?", checkin, checkout)
      spaces.each do |space|
        space_start_date = space.start_date.to_date.to_s.tr("-","").to_i
        space_end_date = space.end_date.to_date.to_s.tr("-","").to_i
        # check booking by space_id and
        # booking start_date and booking end_date still in range of space start_date aand space end_date and
        # to check how many bookings existed based on space start_date and end_date

        # then search booking with same start_date and end_date as query checkin and checkout
        # if exist, then do not display the space because already book
        # if not, then space is available for booking for that checkin and checkout date
        bookings = Booking
        .where("start_date >= ? AND end_date <= ?", space_start_date, space_end_date)
        .where("start_date = ? AND end_date = ?", checkin.tr("-","").to_i, checkout.tr("-","").to_i)
        @spaces << space unless bookings.present?
      end
    else
      @spaces = Space.all
    end
  end

  def all
    @spaces = Space.where(user: current_user)
  end

  def new
    @space = Space.new
  end

  def create
    space = Space.new(space_params)
    space.save
    redirect_to spaces_path
  end

  def update
    if @space.update(space_params)
      redirect_to space_path(@space)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :description, :contact, :price)
  end

  def set_space
    @space = Space.find(params[:id])
  end
end
