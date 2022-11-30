require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    context 'testing GET/index' do
      it 'returns a 200 (success)' do
        expect(response).to have_http_status(:ok)
      end
    end

    it 'assigns all users to @users' do
      expect(assigns(:users)).to eq(User.all)
    end

    it 'renders correct template' do
      expect(response).to render_template('index')
    end

    it 'does not render a different template' do
      expect(response).to_not render_template('users/show')
    end

    it 'renders first name correctly' do
      expect(response.body).to include(User.first.name)
    end
  end

  describe 'GET /show' do
    before(:example) { get user_path(User.first.id) }

    it 'returns a 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the template for a single user' do
      expect(response).to render_template(:show)
    end

    it 'renders first name correctly' do
      expect(response.body).to include(User.first.name)
    end

    it 'eager loads all files without errors' do
      expect { Rails.application.eager_load! }.not_to raise_error
    end
  end
end
