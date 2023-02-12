require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(netid:"123", firstname:"john", lastname:"doe", uin:"321", email:"jon@doe.com"),
      Member.create!(netid:"456", firstname:"sam", lastname:"doe", uin:"654", email:"sam@doe.com"),
      
    ])
  end

  it "renders a list of members" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
