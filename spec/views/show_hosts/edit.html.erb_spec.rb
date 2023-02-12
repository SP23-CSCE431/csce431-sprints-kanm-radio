require 'rails_helper'

RSpec.describe "show_hosts/edit", type: :view do
  let(:show_host) {
    ShowHost.create!()
  }

  before(:each) do
    assign(:show_host, show_host)
  end

  it "renders the edit show_host form" do
    render

    assert_select "form[action=?][method=?]", show_host_path(show_host), "post" do
    end
  end
end
