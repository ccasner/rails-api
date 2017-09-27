require 'rails_helper'

RSpec.describe "Tolls", type: :request do
  describe "GET /tolls" do
    it "works! (now write some real specs)" do
      get tolls_path
      expect(response).to have_http_status(200)
    end
  end
end
