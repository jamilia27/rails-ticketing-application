class ReviewsController < ApplicationController

  def create

  end

private

  def review_params
    params.require(:review).permit(:title, :body, :user_id, :concert_id)
  end
end
