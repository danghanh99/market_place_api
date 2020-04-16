require "rails_helper"

RSpec.describe User, type: :model do
  before { FactoryBot.create(:user) }
  before { @user = FactoryBot.build(:user) }
  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  describe "when email is not present" do
    it { should_not be_valid }
    before { @user.email = "huytran.301099@gmail.com" }
    it { should validate_presence_of(:email) }
    it { should_not validate_uniqueness_of(:email) }
    it { should validate_confirmation_of(:password) }
    it { should allow_value("example@domain.com").for(:email) }
  end
end
