require 'rails_helper'

RSpec.describe "quadrants/index", type: :view do
  before(:each) do
    assign(:quadrants, [
      Quadrant.create!(),
      Quadrant.create!()
    ])
  end

  it "renders a list of quadrants" do
    render
  end
end
