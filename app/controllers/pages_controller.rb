class PagesController < ApplicationController
  def home
    @superstars = Superstar.all
  end
end
