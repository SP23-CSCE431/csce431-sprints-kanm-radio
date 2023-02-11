require 'rails_helper'

RSpec.describe "shows_hosts/index", type: :view do
  before(:each) do
    assign(:shows_hosts, [
      ShowsHost.create!(),
      ShowsHost.create!()
    ])
  end

  it "renders a list of shows_hosts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
