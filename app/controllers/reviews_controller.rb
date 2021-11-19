class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
      flash[:notice] = "Review created"
    else
      render 'restaurants/show'
      flash[:alert] = "Error, try again"
    end
  end


  private

  def review_params
    params.require(:review).permit(:content)
  end
end
