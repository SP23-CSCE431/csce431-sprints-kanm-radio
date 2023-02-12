require 'rails_helper'

RSpec.describe "show_hosts/show", type: :view do
  before(:each) do
    @mem2 = Member.create!(netid:"456", firstname:"sam", lastname:"doe", uin:"654", email:"sam@doe.com")
    @show1= Show.create!(showname:"acdc", showdescription:"rock")
    assign(:show_host, ShowHost.create!(show_id:@show1.id,member_id:@mem2.id))
  end

  it "renders attributes in <p>" do
    render
  end
end
