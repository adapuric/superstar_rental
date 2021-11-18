class ReviewsController < ApplicationController
  def create
    @superstar = Superstar.find(params[:superstar_id])
    @review = Review.new(review_params)
    @review.superstar = @superstar
    if @review.save
      redirect_to superstar_path(@superstar)
    else
      render "superstars/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
