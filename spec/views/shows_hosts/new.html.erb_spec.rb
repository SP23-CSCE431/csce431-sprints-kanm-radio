require 'rails_helper'

RSpec.describe "shows_hosts/new", type: :view do
  before(:each) do
    assign(:shows_host, ShowsHost.new())
  end

  it "renders new shows_host form" do
    render

    assert_select "form[action=?][method=?]", shows_hosts_path, "post" do
    end
  end
end
