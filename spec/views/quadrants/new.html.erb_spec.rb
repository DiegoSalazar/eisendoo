require 'rails_helper'

RSpec.describe "quadrants/new", type: :view do
  before(:each) do
    assign(:quadrant, Quadrant.new())
  end

  it "renders new quadrant form" do
    render

    assert_select "form[action=?][method=?]", quadrants_path, "post" do
    end
  end
end
