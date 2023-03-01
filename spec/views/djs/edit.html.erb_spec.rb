require 'rails_helper'

RSpec.describe "djs/edit", type: :view do
  let(:dj) {
    Dj.create!(
      dj_id: 1,
      member_id: 1,
      speciality: "MyString",
      picture: "MyString"
    )
  }

  before(:each) do
    assign(:dj, dj)
  end

  it "renders the edit dj form" do
    render

    assert_select "form[action=?][method=?]", dj_path(dj), "post" do

      assert_select "input[name=?]", "dj[dj_id]"

      assert_select "input[name=?]", "dj[member_id]"

      assert_select "input[name=?]", "dj[speciality]"

      assert_select "input[name=?]", "dj[picture]"
    end
  end
end
