require 'rails_helper'

RSpec.describe "show_hosts/show", type: :view do
  before(:each) do
    assign(:show_host, ShowHost.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
