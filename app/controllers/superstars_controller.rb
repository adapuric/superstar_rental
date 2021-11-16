class SuperstarsController < ApplicationController
  def index
    @superstars = Superstar.all
  end

  def show

  end
end
