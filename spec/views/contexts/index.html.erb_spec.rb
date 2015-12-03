require 'rails_helper'

RSpec.describe "contexts/index", type: :view do
  before(:each) do
    assign(:contexts, [
      Context.create!(
        :name => "Name",
        :main => false
      ),
      Context.create!(
        :name => "Name",
        :main => false
      )
    ])
  end

  it "renders a list of contexts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
