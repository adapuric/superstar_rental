class SuperstarsController < ApplicationController
  def index
    if params[:query].present?
      @superstars = Superstar.search_by_name_and_event_type(params[:query])
    else
      @superstars = Superstar.all
    end
  end

  def show
    @superstar = Superstar.find(params[:id])
    @booking = Booking.new
  end
end
