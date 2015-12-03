require 'rails_helper'

RSpec.describe "todos/new", type: :view do
  before(:each) do
    assign(:todo, Todo.new(
      :quadrant => nil,
      :user => nil,
      :body => "MyText",
      :notify => false,
      :recurring_rule => "MyString"
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "input#todo_quadrant_id[name=?]", "todo[quadrant_id]"

      assert_select "input#todo_user_id[name=?]", "todo[user_id]"

      assert_select "textarea#todo_body[name=?]", "todo[body]"

      assert_select "input#todo_notify[name=?]", "todo[notify]"

      assert_select "input#todo_recurring_rule[name=?]", "todo[recurring_rule]"
    end
  end
end
