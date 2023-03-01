require 'rails_helper'

RSpec.describe "djs/index", type: :view do
  before(:each) do
    assign(:djs, [
      Dj.create!(
        dj_id: 2,
        member_id: 3,
        speciality: "Speciality",
        picture: "Picture"
      ),
      Dj.create!(
        dj_id: 2,
        member_id: 3,
        speciality: "Speciality",
        picture: "Picture"
      )
    ])
  end

  it "renders a list of djs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Speciality".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Picture".to_s), count: 2
  end
end
