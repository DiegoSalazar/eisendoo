require 'rails_helper'

RSpec.describe "quadrants/edit", type: :view do
  before(:each) do
    @quadrant = assign(:quadrant, Quadrant.create!())
  end

  it "renders the edit quadrant form" do
    render

    assert_select "form[action=?][method=?]", quadrant_path(@quadrant), "post" do
    end
  end
end
