# frozen_string_literal: true

class TicketsController < ApplicationController
  before_action :authorize
  before_action :set_user, only: %i[index]

  def index
    @tickets = @user.tickets
    render json: @tickets.to_json(
      include: [concert: { only: %i[name] }]
    )
  end

  def show
    @ticket = Ticket.find_by(user_id: current_user.id, id: params[:id])
  end

  def create
    ticket = Ticket.new(ticket_params)

    if ticket.save
      redirect_to user_path(current_user)
    else
      flash.now.alert = "You do not have enough credits" \
      "to purchase this ticket."
      @concerts = Concert.all
      render "concerts/index"
    end
  end

private

  def ticket_params
    { price: params[:ticket][:price],
      concert_id: params[:concert_id],
      user: current_user }
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
