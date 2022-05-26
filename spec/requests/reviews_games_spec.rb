require 'rails_helper'

RSpec.describe "ReviewsGames", type: :request do
  describe "GET /reviews_games" do
    it "works! (now write some real specs)" do
      get reviews_games_path
      expect(response).to have_http_status(200)
    end
  end
end
