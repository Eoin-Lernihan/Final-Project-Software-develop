require 'rails_helper'

RSpec.describe "GameReviews", type: :request do
  describe "GET /game_reviews" do
    it "works! (now write some real specs)" do
      get game_reviews_path
      expect(response).to have_http_status(200)
    end
  end
end
