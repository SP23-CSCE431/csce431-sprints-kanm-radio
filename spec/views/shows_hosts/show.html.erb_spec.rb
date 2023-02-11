require 'rails_helper'

RSpec.describe "shows_hosts/show", type: :view do
  before(:each) do
    assign(:shows_host, ShowsHost.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
