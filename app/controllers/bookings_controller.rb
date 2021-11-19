class BookingsController < ApplicationController
  before_action :set_superstar, only: [:new, :create]
  before_action :set_booking, only: [:show]

  def show
  end

  def new
    @booking = Booking.new
    @review = Review.new
  end

  def create
    @superstar = Superstar.find(params[:superstar_id])
    @booking = Booking.new(booking_params)
    @booking.superstar = @superstar
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'superstars/show'
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
