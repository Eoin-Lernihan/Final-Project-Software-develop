require 'rails_helper'

RSpec.describe "reviews_games/show", type: :view do
  before(:each) do
    @reviews_game = assign(:reviews_game, ReviewsGame.create!(
      :name => "Name",
      :type => "Type",
      :developer => "Developer",
      :description => "MyText",
      :review => "MyText",
      :stars => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Developer/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
