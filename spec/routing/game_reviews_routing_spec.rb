require "rails_helper"

RSpec.describe GameReviewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/game_reviews").to route_to("game_reviews#index")
    end

    it "routes to #new" do
      expect(:get => "/game_reviews/new").to route_to("game_reviews#new")
    end

    it "routes to #show" do
      expect(:get => "/game_reviews/1").to route_to("game_reviews#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/game_reviews/1/edit").to route_to("game_reviews#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/game_reviews").to route_to("game_reviews#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/game_reviews/1").to route_to("game_reviews#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/game_reviews/1").to route_to("game_reviews#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/game_reviews/1").to route_to("game_reviews#destroy", :id => "1")
    end

  end
end
