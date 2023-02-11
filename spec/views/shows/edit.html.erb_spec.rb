require 'rails_helper'

RSpec.describe "shows/edit", type: :view do
  let(:show) {
    Show.create!()
  }

  before(:each) do
    assign(:show, show)
  end

  it "renders the edit show form" do
    render

    assert_select "form[action=?][method=?]", show_path(show), "post" do
    end
  end
end
