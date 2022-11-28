require 'rails_helper'

RSpec.describe "Apps", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/app/index"
      expect(response).to have_http_status(:success)
    end
  end

end
