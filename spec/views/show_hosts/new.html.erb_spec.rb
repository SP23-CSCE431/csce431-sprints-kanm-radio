require 'rails_helper'

RSpec.describe "show_hosts/new", type: :view do
  before(:each) do
    assign(:show_host, ShowHost.new())
  end

  it "renders new show_host form" do
    render

    assert_select "form[action=?][method=?]", show_hosts_path, "post" do
    end
  end
end
