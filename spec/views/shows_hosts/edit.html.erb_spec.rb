require 'rails_helper'

RSpec.describe "shows_hosts/edit", type: :view do
  let(:shows_host) {
    ShowsHost.create!()
  }

  before(:each) do
    assign(:shows_host, shows_host)
  end

  it "renders the edit shows_host form" do
    render

    assert_select "form[action=?][method=?]", shows_host_path(shows_host), "post" do
    end
  end
end
