require 'rails_helper'

RSpec.describe 'Authentication', type: :request do
  describe 'POST /auth/login' do
    let(:headers) { valid_headers.except('Authorization') }

    context 'When request is valid' do
      before { post '/auth', headers: headers }

      it 'returns an authentication token' do
        expect(json['auth_token']).not_to be_nil
      end
    end

  end
end
