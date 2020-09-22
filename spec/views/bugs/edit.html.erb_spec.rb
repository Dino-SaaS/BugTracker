require 'rails_helper'

RSpec.describe "bugs/edit", type: :view do
  before(:each) do
    @bug = assign(:bug, Bug.create!(
      title: "MyString",
      status: 1,
      platform: 1
    ))
  end

  it "renders the edit bug form" do
    render

    assert_select "form[action=?][method=?]", bug_path(@bug), "post" do

      assert_select "input[name=?]", "bug[title]"

      assert_select "input[name=?]", "bug[status]"

      assert_select "input[name=?]", "bug[platform]"
    end
  end
end
