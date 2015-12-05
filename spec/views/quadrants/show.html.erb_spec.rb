require 'rails_helper'

RSpec.describe "quadrants/show", type: :view do
  before(:each) do
    @quadrant = assign(:quadrant, Quadrant.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
