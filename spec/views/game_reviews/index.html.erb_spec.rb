require 'rails_helper'

RSpec.describe "game_reviews/index", type: :view do
  before(:each) do
    assign(:game_reviews, [
      GameReview.create!(
        :name => "Name",
        :genre => "Genre",
        :developer => "Developer",
        :description => "MyText",
        :review => "MyText",
        :stars => 2
      ),
      GameReview.create!(
        :name => "Name",
        :genre => "Genre",
        :developer => "Developer",
        :description => "MyText",
        :review => "MyText",
        :stars => 2
      )
    ])
  end

  it "renders a list of game_reviews" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Developer".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
