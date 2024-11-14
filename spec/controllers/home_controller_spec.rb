require "rails_helper"

RSpec.describe HomeController, type: :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
  describe "GET dashboard" do
    context "when the user is not authenticated" do
      it "redirects to the SignIn page" do
        get :dashboard
        expect(response).to redirect_to(new_session_url)
      end
    end
  end
end
