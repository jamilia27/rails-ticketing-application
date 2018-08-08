# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :concert
  belongs_to :user

  validates :price, presence: true
  validates :concert, presence: true
  validates :user, presence: true

  delegate :name, to: :concert, prefix: true
  delegate :genre, to: :concert, prefix: true
  delegate :venue, to: :concert, prefix: true

  scope :user_tickets, ->(user) { where(user_id: user) }

  def purchase
    transaction do
      charge_user
      save!
    end
  end

protected

  def charge_user
    user.account_balance -= price
    user.save!
  end
end
