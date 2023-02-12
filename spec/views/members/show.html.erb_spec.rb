require 'rails_helper'

RSpec.describe "members/show", type: :view do
  before(:each) do
    assign(:member, Member.create!(netid:"123", firstname:"john", lastname:"doe", uin:"321", email:"jon@doe.com"))
  end

  it "renders attributes in <p>" do
    render
  end
end
