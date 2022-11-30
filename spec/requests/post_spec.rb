require_relative '../rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    context 'testing GET /index' do
      it 'rendering users page index' do
        get 'http://localhost:3000/user/1/post'
        expect(response).to render_template(:index)
      end
    end

    it 'checks if the correct themplate was rendered' do
      get 'http://localhost:3000/user'
      expect(response).to render_template(:index)
    end

    it 'return success' do
      get 'http://localhost:3000/user/1/post/1'
      expect(response).to have_http_status(:success)
    end

    it 'checks  correct placeholder text' do
      get 'http://localhost:3000/user/1/post/1'
      expect(response.body).to include('Hello')
    end
  end
end
