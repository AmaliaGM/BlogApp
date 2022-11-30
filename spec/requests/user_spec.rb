require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    context 'testing GET/index' do
      it 'renders correct template' do
        get 'http://localhost:3000/user'
        expect(response).to render_template(:index)
      end
    end

    it 'renders user status correctly' do
      get 'http://localhost:3000/user/1'
      expect(response.body).to include('users')
    end
  end

  describe 'GET /show' do
    before(:example) { get user_path(User.first.id) }

    it 'returns a 200' do
      get 'http://localhost:3000/user'
      expect(response).to have_http_status(:success)
    end

    it 'eager loads all files without errors' do
      expect { Rails.application.eager_load! }.not_to raise_error
    end
  end
end
