require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "belongs to a user and a concert", :aggregate_failures do
    expect(subject).to belong_to(:user)
    expect(subject).to belong_to(:concert)
  end

  it "has validations", :aggregate_failures do
    expect(subject).to validate_presence_of(:price)
    expect(subject).to validate_presence_of(:concert)
    expect(subject).to validate_presence_of(:user)
  end

  describe ".charge_user" do
    it "subtracts the price from the user's account balance when the creating a ticket" do
      user = create(:user, id: 1, account_balance: 10)
      concert = create(:concert, id: 1)
      ticket = create(:ticket, user_id: 1, concert_id: 1, price: 5)
      expect(ticket.user.account_balance).to eq(5)
    end
  end
end
