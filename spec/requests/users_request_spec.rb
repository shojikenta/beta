require 'rails_helper'

RSpec.describe "Users", type: :request do

    context 'GET /signup' do
    before { get signup_path }
    it 'responds successfully' do
      expect(response).to have_http_status 200
    end
    it "has title 'Beta App'" do
      expect(response.body).to include 'Beta App'
    end
  end
end
