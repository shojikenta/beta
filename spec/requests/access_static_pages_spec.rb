require 'rails_helper'

RSpec.describe 'Access to static_pages', type: :request do
  context 'GET #home' do
    before { get root_path }
    it 'responds successfully' do
      expect(response).to have_http_status 200
    end
    it "has title 'Beta App'" do
      expect(response.body).to include 'Beta App'
      expect(response.body).to_not include '| Beta App'
    end
  end
  context 'GET #help' do
    before { get help_path }
    it 'responds successfully' do
      expect(response).to have_http_status 200
    end
    it "has title 'Home | Beta App'" do
      expect(response.body).to include 'Help | Beta App'
    end
  end
  context 'GET #about' do
    before { get about_path } 
    it 'responds successfully' do
      expect(response).to have_http_status 200
    end
    it "has title 'Home | Beta App'" do
      expect(response.body).to include 'About | Beta App'
    end
  end
end