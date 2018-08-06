# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :concert
  belongs_to :user

  def buy_a_ticket(user)
    buy_the_ticket(user)
    thank_you
  end

private

  def buy_the_ticket(user)
    debugger
    user.account_balance -= price
    user.save
  end

  def thank_you
    "Thanks for purchasing your ticket to #{concert.name}!" \
    "See you at #{concert.venue} on #{concert.date}!"
  end
end


# Post Actionß> controller> This shit ^^^ >rerirects someqwere wles
