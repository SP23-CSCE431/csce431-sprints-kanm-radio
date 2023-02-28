require 'rails_helper'

RSpec.describe "officers/new", type: :view do
  before(:each) do
    assign(:officer, Officer.new(
      officer_id: 1,
      member_id: 1,
      positionTitle: "MyString",
      picture: "MyString"
    ))
  end

  it "renders new officer form" do
    render

    assert_select "form[action=?][method=?]", officers_path, "post" do

      assert_select "input[name=?]", "officer[officer_id]"

      assert_select "input[name=?]", "officer[member_id]"

      assert_select "input[name=?]", "officer[positionTitle]"

      assert_select "input[name=?]", "officer[picture]"
    end
  end
end
