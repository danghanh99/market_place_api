describe Api::V1::SessionsController do
  describe "DELETE #destroy" do
    before(:each) do
      @user = FactoryBot.create :user
      sign_in @user
      delete :destroy, params: { id: @user.auth_token }
    end

    it "should response 204" do
      expect(response).to have_http_status(204)
    end
  end
end
