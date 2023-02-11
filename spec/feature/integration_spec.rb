# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Adding a new member', type: :feature do
  scenario 'valid inputs' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit members_path
    expect(page).to have_content('123')
  end
end