require 'rails_helper'

RSpec.describe "show_hosts/index", type: :view do
  before(:each) do
    assign(:show_hosts, [
      ShowHost.create!(),
      ShowHost.create!()
    ])
  end

  it "renders a list of show_hosts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
