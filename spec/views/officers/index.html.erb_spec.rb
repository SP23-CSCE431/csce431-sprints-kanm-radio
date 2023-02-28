require 'rails_helper'

RSpec.describe "officers/index", type: :view do
  before(:each) do
    assign(:officers, [
      Officer.create!(
        officer_id: 2,
        member_id: 3,
        positionTitle: "Position Title",
        picture: "Picture"
      ),
      Officer.create!(
        officer_id: 2,
        member_id: 3,
        positionTitle: "Position Title",
        picture: "Picture"
      )
    ])
  end

  it "renders a list of officers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Position Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Picture".to_s), count: 2
  end
end
