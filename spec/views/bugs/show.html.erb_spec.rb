require 'rails_helper'

RSpec.describe "bugs/show", type: :view do
  before(:each) do
    @bug = assign(:bug, Bug.create!(
      title: "Title",
      status: 2,
      platform: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
