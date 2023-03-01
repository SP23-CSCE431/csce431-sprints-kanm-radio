require 'rails_helper'

RSpec.describe "djs/show", type: :view do
  before(:each) do
    assign(:dj, Dj.create!(
      dj_id: 2,
      member_id: 3,
      speciality: "Speciality",
      picture: "Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Speciality/)
    expect(rendered).to match(/Picture/)
  end
end
