# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :concert
  belongs_to :user

#   def buy_ticket
#     if not_enough_money?
#       purchase_denied
#     else
#       buy_the_ticket
#       thank_you
#     end
#   end

# private

#   def not_enough_money?
#     true if user.account_balance < price
#   end

#   def purchase_denied
#     "Sorry your account balance is too low to purchase this ticket"
#   end

#   def buy_the_ticket
#     user.account_balance -= price
#     user.save
#   end

#   def thank_you
#     "Thanks for purchasing your ticket to #{concert.name}!" \
#     "See you at #{concert.venue} on #{concert.date}!"
#   end
end
