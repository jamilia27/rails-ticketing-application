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
    it "subtracts the price from the user's account balance and saves the user" do
    end
  end
end
