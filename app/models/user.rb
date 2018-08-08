# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :account_balance, numericality: { greater_than_or_equal_to: 0 }
  has_many :tickets
  has_many :concerts, through: :tickets
  before_save :downcase_email

private

  def downcase_email
    self.email = email.downcase
  end
end
