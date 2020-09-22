require 'rails_helper'

RSpec.describe "bugs/index", type: :view do
  before(:each) do
    assign(:bugs, [
      Bug.create!(
        title: "Title",
        status: 2,
        platform: 3
      ),
      Bug.create!(
        title: "Title",
        status: 2,
        platform: 3
      )
    ])
  end

  it "renders a list of bugs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
