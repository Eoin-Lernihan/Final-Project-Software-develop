require 'rails_helper'

RSpec.describe "game_reviews/show", type: :view do
  before(:each) do
    @game_review = assign(:game_review, GameReview.create!(
      :name => "Name",
      :genre => "Genre",
      :developer => "Developer",
      :description => "MyText",
      :review => "MyText",
      :stars => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/Developer/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
