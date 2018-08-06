# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :concert
  belongs_to :user
  delegate :name, to: :concert, prefix: true
  delegate :genre, to: :concert, prefix: true
  delegate :venue, to: :concert, prefix: true
  scope :user_tickets, -> (user) { where(user_id: user) }

  def charge_user(user)
    user.account_balance -= price
    user.save
  end
end
