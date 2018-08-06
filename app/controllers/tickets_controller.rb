# frozen_string_literal: true

class TicketsController < ApplicationController
  def buy_ticket
    ticket = current_user.tickets.build(price: 5, concert_id: params[:concert_id])
    ticket.save
    ticket.buy_a_ticket(current_user)
    redirect_to user_path(current_user)
  end
end
