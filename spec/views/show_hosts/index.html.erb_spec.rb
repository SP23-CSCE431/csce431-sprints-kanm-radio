require 'rails_helper'

RSpec.describe "show_hosts/index", type: :view do
  before(:each) do
    @mem1 = Member.create!(netid:"123", firstname:"john", lastname:"doe", uin:"321", email:"jon@doe.com")
    @mem2 = Member.create!(netid:"456", firstname:"sam", lastname:"doe", uin:"654", email:"sam@doe.com")
    @show1= Show.create!(showname:"acdc", showdescription:"rock")

    assign(:show_hosts, [

      ShowHost.create!(show_id:@show1.id, member_id:@mem1.id),
      ShowHost.create!(show_id:@show1.id, member_id:@mem2.id)
    ])
  end

  it "renders a list of show_hosts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
