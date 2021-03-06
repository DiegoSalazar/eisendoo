require 'rails_helper'

RSpec.describe "todos/index", type: :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        :quadrant => nil,
        :user => nil,
        :body => "MyText",
        :notify => false,
        :recurring_rule => "Recurring Rule"
      ),
      Todo.create!(
        :quadrant => nil,
        :user => nil,
        :body => "MyText",
        :notify => false,
        :recurring_rule => "Recurring Rule"
      )
    ])
  end

  it "renders a list of todos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Recurring Rule".to_s, :count => 2
  end
end
