class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @superstar = Superstar.find(params[:superstar_id])
    @review.superstar = @superstar
    if @review.save
      redirect_to superstar_path(@superstar.id)
    else
      render superstar_path(@superstar.id)
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
