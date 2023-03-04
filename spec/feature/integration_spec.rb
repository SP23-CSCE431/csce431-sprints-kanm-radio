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

  scenario 'invalid inputs' do
    visit new_member_path
    fill_in "member[netid]", with: ''
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    expect(page).to have_content("Netid can't be blank")
  end

  scenario 'valid update' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit members_path
    click_on 'Show this member', match: :first
    click_on 'Edit this member'
    fill_in "member[netid]", with: '1234'
    click_on 'Update Member'
    visit members_path
    expect(page).to have_content('1234')
  end

  scenario 'invalid update' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit members_path
    click_on 'Show this member',match: :first
    click_on 'Edit this member'
    fill_in "member[netid]", with: ''
    click_on 'Update Member'
    expect(page).to have_content("Netid can't be blank")
  end

  scenario 'valid delete' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit members_path
    click_on 'Show this member', match: :first
    click_on 'Delete this member'
    expect(page).to have_content('Member has been successfully deleted')
  end
end



RSpec.describe 'Adding a new show', type: :feature do
  scenario 'valid inputs' do
    visit new_show_path
    fill_in "show[showname]", with: '123'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit shows_path
    expect(page).to have_content('123')
  end

  scenario 'invalid inputs' do
    visit new_show_path
    fill_in "show[showname]", with: ''
    fill_in "show[showdescription]", with: 'John'
    click_on 'Create Show'
    expect(page).to have_content("Showname can't be blank")
  end

  scenario 'valid update' do
    visit new_show_path
    fill_in "show[showname]", with: '123'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit shows_path
    click_on 'Show this show', match: :first
    click_on 'Edit this show'
    fill_in "show[showname]", with: '1234'
    click_on 'Update Show'
    visit shows_path
    expect(page).to have_content('1234')
  end

  scenario 'invalid update' do
    visit new_show_path
    fill_in "show[showname]", with: '123'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit shows_path
    click_on 'Show this show', match: :first
    click_on 'Edit this show'
    fill_in "show[showname]", with: ''
    click_on 'Update Show'
    expect(page).to have_content("Showname can't be blank")
  end

  scenario 'valid delete' do
    visit new_show_path
    fill_in "show[showname]", with: '123'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit shows_path
    click_on 'Show this show', match: :first
    click_on 'Delete this show'
    expect(page).to have_content('Show has been successfully deleted.')
  end
end

RSpec.describe 'Adding a new show host', type: :feature do
  scenario 'valid inputs' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_show_path
    fill_in "show[showname]", with: '123'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit shows_path
    visit new_show_host_path
    select '123', from: "show_host[show_id]"
    select '123', from: "show_host[member_id]"
    click_on "Create Show host"
    visit show_hosts_path
    expect(page).to have_content('123')
  end

  scenario 'invalid inputs' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_show_path
    fill_in "show[showname]", with: '123'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit shows_path
    visit new_show_host_path
    select '123', from: "show_host[member_id]"
    click_on "Create Show host"
    expect(page).to have_content('Show must exist')
  end

  scenario 'valid update' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_show_path
    fill_in "show[showname]", with: '123'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit new_show_path
    fill_in "show[showname]", with: '2'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit new_show_host_path
    select '123', from: "show_host[show_id]"
    select '123', from: "show_host[member_id]"
    click_on "Create Show host"
    visit show_hosts_path
    click_on "Show"
    click_on "Edit this show host"
    select '2', from: "show_host[show_id]"
    click_on "Update Show host"
    visit show_hosts_path
    expect(page).to have_content('2')
  end

  scenario 'invalid update' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_show_path
    fill_in "show[showname]", with: '123'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit new_show_path
    fill_in "show[showname]", with: '1234'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit new_show_host_path
    select '1234', from: "show_host[show_id]"
    select '123', from: "show_host[member_id]"
    click_on "Create Show host"
    visit show_hosts_path
    click_on "Show"
    click_on "Edit this show host"
    select '', from: "show_host[show_id]"
    click_on "Update Show host"
    expect(page).to have_content('Show must exist')
  end

  scenario 'valid delete' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_show_path
    fill_in "show[showname]", with: '123'
    fill_in "show[showdescription]", with: 'John'
    fill_in "show[active]", with: '0'
    fill_in "show[timeslot]", with: '0'
    click_on 'Create Show'
    visit shows_path
    visit new_show_host_path
    select '123', from: "show_host[show_id]"
    select '123', from: "show_host[member_id]"
    click_on "Create Show host"
    visit show_hosts_path
    click_on "Show"
    click_on "Delete this show host"
    expect(page).to have_content('Show host has been successfully deleted.')
  end
end


RSpec.describe 'Adding a new officer', type: :feature do
  scenario 'valid inputs' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_officer_path
    select 'John', from: "officer[member_id]"
    fill_in 'officer[positionTitle]', with: 'ceo'
    click_on "Create Officer"
    visit officers_path
    expect(page).to have_content('ceo')
  end

  scenario 'invalid inputs' do
    visit new_officer_path
    click_on 'Create Officer'
    expect(page).to have_content('Member must exist')
  end

  scenario 'valid update' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_officer_path
    select 'John', from: "officer[member_id]"
    fill_in 'officer[positionTitle]', with: 'ceo'
    click_on "Create Officer"

    visit officers_path
    click_on 'Show this officer'
    click_on 'Edit this officer'

    fill_in 'officer[positionTitle]', with: 'President'
    click_on "Update Officer"
    visit officers_path
    expect(page).to have_content("President")
  end

  scenario 'valid Delete' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_officer_path
    select 'John', from: "officer[member_id]"
    fill_in 'officer[positionTitle]', with: 'ceo'
    click_on "Create Officer"
    visit officers_path
    click_on "Show this officer"
    click_on "Delete this officer"
    expect(page).to have_content('Officer was successfully deleted.')
  end
end

RSpec.describe 'Adding a new dj', type: :feature do
  scenario 'valid inputs' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_dj_path
    select 'John', from: "dj[member_id]"
    fill_in "dj[speciality]", with: 'Music Specialist'
    fill_in "dj[picture]", with: 'picture.png'
    click_on 'Create Dj'
    visit djs_path
    expect(page).to have_content('Music Specialist')
  end

  scenario 'invalid inputs' do
    visit new_dj_path
    click_on 'Create Dj'

    expect(page).to have_content("Member must exist")
  end

  scenario 'valid update' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_dj_path
    select 'John', from: "dj[member_id]"
  
    fill_in "dj[speciality]", with: 'Music Specialist'
    fill_in "dj[picture]", with: 'picture.png'
    click_on 'Create Dj'

    visit djs_path
    click_on 'Show this DJ'
    click_on 'Edit this dj'
    click_on 'Update Dj'
    visit djs_path
    expect(page).to have_content('picture.png')
  end

  scenario 'invalid update' do
    visit new_dj_path
    click_on 'Create Dj'

    expect(page).to have_content("Member must exist")
  end

  scenario 'valid delete' do
    visit new_member_path
    fill_in "member[netid]", with: '123'
    fill_in "member[firstname]", with: 'John'
    fill_in "member[lastname]", with: 'Appleseed'
    fill_in "member[uin]", with: '123456789'
    fill_in "member[email]", with: 'email@email.com'
    click_on 'Create Member'
    visit new_dj_path
    select 'John', from: "dj[member_id]"


    fill_in "dj[speciality]", with: 'Music Specialist'
    fill_in "dj[picture]", with: 'picture.png'
    click_on 'Create Dj'

    visit djs_path
    click_on 'Show this DJ'
    click_on 'Delete this dj'
    expect(page).to have_content('Dj has been successfully deleted.')
  end
end
