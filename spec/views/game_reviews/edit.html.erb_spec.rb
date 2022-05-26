require 'rails_helper'

RSpec.describe "game_reviews/edit", type: :view do
  before(:each) do
    @game_review = assign(:game_review, GameReview.create!(
      :name => "MyString",
      :genre => "MyString",
      :developer => "MyString",
      :description => "MyText",
      :review => "MyText",
      :stars => 1
    ))
  end

  it "renders the edit game_review form" do
    render

    assert_select "form[action=?][method=?]", game_review_path(@game_review), "post" do

      assert_select "input#game_review_name[name=?]", "game_review[name]"

      assert_select "input#game_review_genre[name=?]", "game_review[genre]"

      assert_select "input#game_review_developer[name=?]", "game_review[developer]"

      assert_select "textarea#game_review_description[name=?]", "game_review[description]"

      assert_select "textarea#game_review_review[name=?]", "game_review[review]"

      assert_select "input#game_review_stars[name=?]", "game_review[stars]"
    end
  end
end
