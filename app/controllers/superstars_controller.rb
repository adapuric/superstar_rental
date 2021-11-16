class SuperstarsController < ApplicationController
  def index

  end

  def show
    @superstar = Superstar.find(params[:id])
  end
end
