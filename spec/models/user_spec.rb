RSpec.describe User, type: :model do
  subject(:user) { described_class.new(email_address: "test@example.com", password: "password") }

  it "is valid with valid attributes" do
    expect(user).to be_valid
  end

  it "is not valid without an email address" do
    user.email_address = nil
    expect(user).not_to be_valid
  end

  it "is not valid with a duplicate email address" do
    described_class.create(email_address: "test@example.com", password: "password")
    expect(user).not_to be_valid
  end

  it "is not valid with an invalid email format" do
    user.email_address = "invalid_email"
    expect(user).not_to be_valid
  end

  it "normalizes the email address" do
    user.email_address = " TEST@Example.com "
    user.save
    expect(user.email_address).to eq("test@example.com")
  end
end
