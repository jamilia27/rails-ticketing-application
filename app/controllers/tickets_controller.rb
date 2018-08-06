# frozen_string_literal: true

class TicketsController < ApplicationController
  def create
    debugger
    ticket = current_user.tickets.build(price: params[:price], concert_id: params[:concert_id])
    ticket.save
    ticket.deduct_cost(current_user)
    redirect_to user_path(current_user)
  end


end
