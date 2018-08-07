# frozen_string_literal: true

class TicketsController < ApplicationController
  before_action :authorize

  def index
    @user = User.find(params[:user_id])
    @tickets = Ticket.user_tickets(current_user)
  end

  def show
    @ticket = Ticket.find_by(user_id: params[:user_id], id: params[:id])
  end

  def create
    ticket = current_user.tickets.build(ticket_params)
    if ticket.charge_user(current_user) && ticket.save
      redirect_to user_path(current_user)
    else
      flash.now.alert = "You do not have enough credits to purchase this ticket."
      @concerts = Concert.all
      render "concerts/index"
    end
  end

private

  def ticket_params
    { price: params[:ticket][:price],
      concert_id: params[:concert_id] }
  end
end
