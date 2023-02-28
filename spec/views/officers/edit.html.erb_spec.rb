require 'rails_helper'

RSpec.describe "officers/edit", type: :view do
  let(:officer) {
    Officer.create!(
      officer_id: 1,
      member_id: 1,
      positionTitle: "MyString",
      picture: "MyString"
    )
  }

  before(:each) do
    assign(:officer, officer)
  end

  it "renders the edit officer form" do
    render

    assert_select "form[action=?][method=?]", officer_path(officer), "post" do

      assert_select "input[name=?]", "officer[officer_id]"

      assert_select "input[name=?]", "officer[member_id]"

      assert_select "input[name=?]", "officer[positionTitle]"

      assert_select "input[name=?]", "officer[picture]"
    end
  end
end
