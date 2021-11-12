require 'rails_helper'

describe 'Authentication', type: :request do
  describe 'POST /authenticate' do
    it 'authenticates the client' do
      post '/api/v1/authenticate', params: { email: 'email@email.com', password: 'Password1' }

      expect(response).to have_http_status(:created)
      expect(response_body).to eq({
        'token' => '123'
      })
    end

    it 'returns error message when email is missing' do
      post '/api/v1/authenticate', params: { password: 'Password1' }
      
      expect(response).to have_http_status(:unprocessable_entity)

    end 

    it 'returns error message when password is missing' do
      post '/api/v1/authenticate', params: { email: 'email@email.com' }
      
      expect(response).to have_http_status(:unprocessable_entity)
      
    end
  end
end 