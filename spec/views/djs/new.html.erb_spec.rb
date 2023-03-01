require 'rails_helper'

RSpec.describe "djs/new", type: :view do
  before(:each) do
    assign(:dj, Dj.new(
      dj_id: 1,
      member_id: 1,
      speciality: "MyString",
      picture: "MyString"
    ))
  end

  it "renders new dj form" do
    render

    assert_select "form[action=?][method=?]", djs_path, "post" do

      assert_select "input[name=?]", "dj[dj_id]"

      assert_select "input[name=?]", "dj[member_id]"

      assert_select "input[name=?]", "dj[speciality]"

      assert_select "input[name=?]", "dj[picture]"
    end
  end
end
