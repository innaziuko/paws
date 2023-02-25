class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_space, only: %I[edit update show destroy]

  def index
    checkin = params[:checkin]
    checkout = params[:checkout]
    #@spaces = Space.where("start_date <= ? AND end_date >= ?", checkin, checkout)
    @spaces = Space.left_joins(:bookings).where("spaces.start_date <= ? AND spaces.end_date >= ?", checkin, checkout)
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
