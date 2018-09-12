require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "belongs to a user and a concert", :aggregate_failures do
    expect(subject).to belong_to(:user)
    expect(subject).to belong_to(:concert)
  end

  it "has validations", :aggregate_failures do
    expect(subject).to validate_presence_of(:price)
    expect(subject).to validate_presence_of(:concert)
  end
end
