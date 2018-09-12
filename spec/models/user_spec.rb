require 'rails_helper'

RSpec.describe User, type: :model do

  it "has validations", :aggregate_failures do
    expect(subject).to validate_presence_of(:email)
    expect(subject).to validate_presence_of(:name)
    expect(subject).to validate_numericality_of(:account_balance).
    is_greater_than_or_equal_to(0)
  end

  it "has many concerts, reviews, and tickets", :aggregate_failures do
    expect(subject).to have_many(:tickets)
    expect(subject).to have_many(:concerts)
    expect(subject).to have_many(:reviews)
  end

  it "has a secure password" do
    expect(subject).to have_secure_password
  end

  describe ".downcase_email" do
    it "makes an email downcase before save" do
      user = create(:user, email: "EMAIL@YAHOO.COM")
      expect(user.email).to eq("email@yahoo.com")
    end
  end
end
