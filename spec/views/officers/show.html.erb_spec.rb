require 'rails_helper'

RSpec.describe "officers/show", type: :view do
  before(:each) do
    assign(:officer, Officer.create!(
      officer_id: 2,
      member_id: 3,
      positionTitle: "Position Title",
      picture: "Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Position Title/)
    expect(rendered).to match(/Picture/)
  end
end
