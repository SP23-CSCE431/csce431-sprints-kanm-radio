require 'rails_helper'

RSpec.describe "shows/show", type: :view do
  before(:each) do
    assign(:show, Show.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
