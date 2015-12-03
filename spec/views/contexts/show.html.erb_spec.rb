require 'rails_helper'

RSpec.describe "contexts/show", type: :view do
  before(:each) do
    @context = assign(:context, Context.create!(
      :name => "Name",
      :main => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
