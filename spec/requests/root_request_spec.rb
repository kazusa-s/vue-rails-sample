# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Roots', type: :request do
  describe 'GET /' do
    before do
      get root_path
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end
end
