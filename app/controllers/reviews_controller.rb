# frozen_string_literal: true

class ReviewsController < ApplicationController
  # def index
  #   user = current_user
  #   binding.pry
  #   @reviews = user.reviews
  #   render json: @reviews.to_json, status: 201
  # end

  def create
    @review = Review.create(review_params)
    render json: @review.to_json(
      include: [user: { only: [:name] }]
    ),
           status: 201
  end

private

  def review_params
    params.require(:review).permit(:title, :body, :user_id, :concert_id)
  end
end
