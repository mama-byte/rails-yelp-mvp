class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant.path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant.find(params[restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
