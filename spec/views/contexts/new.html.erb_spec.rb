require 'rails_helper'

RSpec.describe "contexts/new", type: :view do
  before(:each) do
    assign(:context, Context.new(
      :name => "MyString",
      :main => false
    ))
  end

  it "renders new context form" do
    render

    assert_select "form[action=?][method=?]", contexts_path, "post" do

      assert_select "input#context_name[name=?]", "context[name]"

      assert_select "input#context_main[name=?]", "context[main]"
    end
  end
end
