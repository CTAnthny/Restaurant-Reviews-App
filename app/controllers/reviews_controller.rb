class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)

    if @review.save
      flash[:notice] = "Your review was successfully posted!"
      redirect_to @restaurant
    else
      render "restaurants/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
