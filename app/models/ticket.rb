# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :concert
  belongs_to :user

  def deduct_cost(user)
    user.account_balance -= price
    user.save
  end
end
