# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Flights', type: :request do
  describe 'GET /index' do
    it "gets the home page"  do
      get "/"
      debugger
      expect(response).to have_http_status(:ok)
    end 
  end
end
