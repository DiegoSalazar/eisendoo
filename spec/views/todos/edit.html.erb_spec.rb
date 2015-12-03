require 'rails_helper'

RSpec.describe "todos/edit", type: :view do
  before(:each) do
    @todo = assign(:todo, Todo.create!(
      :quadrant => nil,
      :user => nil,
      :body => "MyText",
      :notify => false,
      :recurring_rule => "MyString"
    ))
  end

  it "renders the edit todo form" do
    render

    assert_select "form[action=?][method=?]", todo_path(@todo), "post" do

      assert_select "input#todo_quadrant_id[name=?]", "todo[quadrant_id]"

      assert_select "input#todo_user_id[name=?]", "todo[user_id]"

      assert_select "textarea#todo_body[name=?]", "todo[body]"

      assert_select "input#todo_notify[name=?]", "todo[notify]"

      assert_select "input#todo_recurring_rule[name=?]", "todo[recurring_rule]"
    end
  end
end
