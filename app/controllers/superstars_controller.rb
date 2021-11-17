class SuperstarsController < ApplicationController
  def index
    @superstars = Superstar.all
  end

  def show
    @superstar = Superstar.find(params[:id])
    @booking = Booking.new
  end
end
