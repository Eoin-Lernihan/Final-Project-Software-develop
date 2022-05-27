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

    puts @game_review

    assert_select "form[action=?][method=?]", game_reviews_path, "post" do

      assert_select "#game_review_name", :game_review["name"]
      #assert_select "form#input#game_review[developer=?]", :game_review["developer"]

      assert_select "#game_review_genre", :game_review["genre"]
      
      assert_select "#game_review_stars", :game_review["stars"]

      assert_select "#game_review_description", :game_review["description"]

     # assert_select "#game_review_review", :game_review["review"]

    #  assert_select "input[stars=?]", "game_review[stars]"
    end
  end
end
