require 'rails_helper'

RSpec.describe "reviews_games/edit", type: :view do
  before(:each) do
    @reviews_game = assign(:reviews_game, ReviewsGame.create!(
      :name => "MyString",
      :type => "",
      :developer => "MyString",
      :description => "MyText",
      :review => "MyText",
      :stars => 1
    ))
  end

  it "renders the edit reviews_game form" do
    render

    assert_select "form[action=?][method=?]", reviews_game_path(@reviews_game), "post" do

      assert_select "input#reviews_game_name[name=?]", "reviews_game[name]"

      assert_select "input#reviews_game_type[name=?]", "reviews_game[type]"

      assert_select "input#reviews_game_developer[name=?]", "reviews_game[developer]"

      assert_select "textarea#reviews_game_description[name=?]", "reviews_game[description]"

      assert_select "textarea#reviews_game_review[name=?]", "reviews_game[review]"

      assert_select "input#reviews_game_stars[name=?]", "reviews_game[stars]"
    end
  end
end
