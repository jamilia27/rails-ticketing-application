# frozen_string_literal: true

class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
    set_instance_vars
    respond_to do |format|
      format.html { render :show }
      format.json do
        render json: @concert.as_json.merge(
          review_url: reviews_path(concert_id: @concert.id)
        )
      end
    end
  end

private

  def set_instance_vars
    stage_new_ticket
    stage_new_review
    set_concert
    set_previous_concert
    set_next_concert
  end

  def set_concert
    @concert = Concert.find_by(id: params[:id])
  end

  def set_previous_concert
    @previous_concert =
      Concert.find_by(
        "id < :concert_id",
        concert_id: @concert.id
      ) || Concert.last
  end

  def set_next_concert
    @next_concert = Concert.find_by(
      "id > :concert_id", concert_id: @concert.id
    ) || Concert.first
  end

  def stage_new_ticket
    @ticket = Ticket.new
  end

  def stage_new_review
    @review = Review.new
  end
end
