# frozen_string_literal: true

class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    @reviews = @reviews.where(concert_id: params["concert_id"]) if params["concert_id"].present?

    render json: @reviews.to_json(
      only: %i[body created_at title],
      include: [user: { only: %i[name] }]
    )
  end

  def create
    @review = Review.create(review_params)
    render json: @review.to_json(
      include: [user: { only: %i[name] }]
    ),
           status: 201
  end

private

  def review_params
    params.require(:review).permit(:title, :body, :user_id, :concert_id)
  end
end
