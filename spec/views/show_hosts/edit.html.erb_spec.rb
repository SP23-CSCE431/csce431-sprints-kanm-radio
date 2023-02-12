require 'rails_helper'

RSpec.describe "show_hosts/edit", type: :view do
  let(:show_host) {
    
    @mem2 = Member.create!(netid:"456", firstname:"sam", lastname:"doe", uin:"654", email:"sam@doe.com")
    @show1= Show.create!(showname:"acdc", showdescription:"rock")
    ShowHost.create!(show_id:@show1.id, member_id:@mem2.id)
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
