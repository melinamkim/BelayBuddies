class AvailabilitiesController < ApplicationController

  def new
    @availability = Availability.new
  end

  def create
    @availability = Availability.new(availability_params)
    @availability.user = current_user
    if @availability.save
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  # end

  # def update
  # end

  private

  def availability_params
    params.require(:availability).permit(:date, :begin_time, :end_time)
	end
end
