require 'rails_helper'

RSpec.describe "bugs/new", type: :view do
  before(:each) do
    assign(:bug, Bug.new(
      title: "MyString",
      status: 1,
      platform: 1
    ))
  end

  it "renders new bug form" do
    render

    assert_select "form[action=?][method=?]", bugs_path, "post" do

      assert_select "input[name=?]", "bug[title]"

      assert_select "input[name=?]", "bug[status]"

      assert_select "input[name=?]", "bug[platform]"
    end
  end
end
