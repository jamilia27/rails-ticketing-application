require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "belongs to a user and a concert" do
    expect(subject).to belong_to(:user)
    expect(subject).to belong_to(:concert)
  end
end
