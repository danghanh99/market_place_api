describe "DELETE #destroy" do
  before(:each) do
    @user = FactoryBot.create :user
    sign_in @user
    delete :destroy, id: @user.auth_token
  end

  it { should respond_with 204 }
end
