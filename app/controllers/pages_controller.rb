class PagesController < ApplicationController
  def home
    @superstars = Superstar.all
  end

  def dashboard
    @user = current_user
    @superstars = @user.superstars
    @bookings = @user.bookings
  end
end
