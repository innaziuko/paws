class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  before_action :set_space, only:[:edit, :update]

  def edit
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
