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
    ticket.save
    ticket.charge_user(current_user)
    redirect_to user_path(current_user)
  end

private

  def ticket_params
    { price: params[:ticket][:price],
      concert_id: params[:concert_id] }
  end
end
