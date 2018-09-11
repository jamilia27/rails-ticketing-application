# frozen_string_literal: true

class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)
    render json: @review.to_json, status: 201
  end

private

  def review_params
    params.require(:review).permit(:title, :body, :user_id, :concert_id)
  end
end
