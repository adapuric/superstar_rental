class SuperstarsController < ApplicationController
  def index
    if params[:button] && params[:query] != "" && Superstar.all.event_types.include?(params[:query])
      @superstars = Superstar.all.select { |superstar| superstar.event_type.downcase.include?(params[:query].downcase) }
    elsif params[:button] && params[:query] != ""
      @superstars = Superstar.all.select { |superstar| superstar.name.downcase.include?(params[:query].downcase) }
    else
      @superstars = Superstar.all
    end
  end

  def show
    @superstar = Superstar.find(params[:id])
    @booking = Booking.new
  end
end
