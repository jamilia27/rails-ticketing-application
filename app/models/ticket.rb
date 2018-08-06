# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :concert
  belongs_to :user

  def self.ticket_prices
    all.map do |ticket|
      ticket.price
    end
  end


  def charge_user(user)
    user.account_balance -= price
    user.save
  end
end
