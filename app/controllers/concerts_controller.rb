# frozen_string_literal: true

class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
    @ticket = Ticket.new
    @review = Review.new
    @concert = Concert.find_by(id: params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @concert.as_json.merge({review_url: reviews_path(concert_id: @concert.id)}) }
    end
  end
end

 []
