class BookingsController < ApplicationController
  before_action :set_superstar, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @superstar = Superstar.find(params[:superstar_id])
    @booking = Booking.new(booking_params)
    @booking.superstar = @superstar
    if @booking.save
      redirect_to superstar_path(@superstar)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:event_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_superstar
    @superstar = Superstar.find(params[:superstar_id])
  end
end
