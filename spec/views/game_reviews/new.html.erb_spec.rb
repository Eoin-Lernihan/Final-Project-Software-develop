require 'rails_helper'

RSpec.describe "game_reviews/new", type: :view do
  before(:each) do
    assign(:game_review, GameReview.new(
      :name => "MyString",
      :genre => "MyString",
      :developer => "MyString",
      :description => "MyText",
      :review => "MyText",
      :stars => 1
    ))
  end

  it "renders new game_review form" do
    render

    assert_select "form[action=?][method=?]", game_reviews_path, "post" do

      assert_select "input#game_review_name[name=?]", "game_review[name]"

      assert_select "input#game_review_genre[name=?]", "game_review[genre]"

      assert_select "input#game_review_developer[name=?]", "game_review[developer]"

      assert_select "textarea#game_review_description[name=?]", "game_review[description]"

      assert_select "textarea#game_review_review[name=?]", "game_review[review]"

      assert_select "input#game_review_stars[name=?]", "game_review[stars]"
    end
  end
end
