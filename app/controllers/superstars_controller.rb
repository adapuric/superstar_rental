class SuperstarsController < ApplicationController

  def index
    if params[:query].present?
      @superstars = Superstar.search_by_name_and_event_type(params[:query])
    else
      @superstars = Superstar.all
    end
    # if params[:button] && params[:query] != "" && Superstar.all.event_type.include?(params[:query])
    #   @superstars = Superstar.all.select { |superstar| superstar.event_type.downcase.include?(params[:query].downcase) }
    # elsif params[:button] && params[:query] != ""
    #   @superstars = Superstar.all.select { |superstar| superstar.name.downcase.include?(params[:query].downcase) }
    # else
    #   @superstars = Superstar.all
    # end
  end

  def show
    @superstar = Superstar.find(params[:id])
    @booking = Booking.new
    @review = Review.new
  end

  def new
    @superstar = Superstar.new
  end

  def create
    @superstar = Superstar.new(superstar_params)
    @superstar.user = current_user
    if @superstar.save!
      redirect_to superstars_path, alert: "Hello"
    else
      render :new
    end
  end

  private

  def superstar_params
    params.require(:superstar).permit(:name, :event_type, :bio, :price, :image_url, :region)
  end

end
