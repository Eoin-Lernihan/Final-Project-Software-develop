require 'rails_helper'

RSpec.describe "reviews_games/index", type: :view do
  before(:each) do
    assign(:reviews_games, [
      ReviewsGame.create!(
        :name => "Name",
        :type => "Type",
        :developer => "Developer",
        :description => "MyText",
        :review => "MyText",
        :stars => 2
      ),
      ReviewsGame.create!(
        :name => "Name",
        :type => "Type",
        :developer => "Developer",
        :description => "MyText",
        :review => "MyText",
        :stars => 2
      )
    ])
  end

  it "renders a list of reviews_games" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Developer".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
