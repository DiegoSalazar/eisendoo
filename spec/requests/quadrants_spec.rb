require 'rails_helper'

RSpec.describe "Quadrants", type: :request do
  describe "GET /quadrants" do
    it "works! (now write some real specs)" do
      get quadrants_path
      expect(response).to have_http_status(200)
    end
  end
end
