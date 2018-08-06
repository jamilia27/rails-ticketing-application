# frozen_string_literal: true

class Concert < ApplicationRecord
  has_many :tickets
  has_many :users, through: :tickets

  def formatted_date
    date.strftime("%B %e, %Y")
  end

  def ticket_prices
    (1..10).to_a
  end
end
