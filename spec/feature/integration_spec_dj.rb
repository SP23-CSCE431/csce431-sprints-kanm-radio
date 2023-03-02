# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Adding a new dj', type: :feature do
  scenario 'valid inputs' do
    visit new_dj_path
    fill_in "dj[dj_id]", with: '123'

    # Filling when needs click?
    fill_in "dj[member_id]", with: 'John'

    fill_in "dj[speciality]", with: 'Music Specialist'
    fill_in "dj[picture]", with: 'picture.png'
    click_on 'Create Dj'
    visit djs_path
    expect(page).to have_content('123')
  end

  scenario 'invalid inputs' do
    visit new_dj_path
    fill_in "dj[dj_id]", with: ''

    fill_in "dj[member_id]", with: 'John'

    fill_in "dj[speciality]", with: 'Music Specialist'
    fill_in "dj[picture]", with: 'picture.png'
    click_on 'Create Dj'

    expect(page).to have_content("Netid can't be blank")
  end

  scenario 'valid update' do
    visit new_dj_path
    fill_in "dj[dj_id]", with: '123'

    fill_in "dj[member_id]", with: 'John'

    fill_in "dj[speciality]", with: 'Music Specialist'
    fill_in "dj[picture]", with: 'picture.png'
    click_on 'Create Dj'

    visit djs_path
    click_on 'Show this Dj'
    click_on 'Edit this Dj'
    fill_in "dj[dj_id]", with: '1234'
    click_on 'Update Dj'
    visit djs_path
    expect(page).to have_content('1234')
  end

  scenario 'invalid update' do
    visit new_dj_path
    fill_in "dj[dj_id]", with: ''

    fill_in "dj[member_id]", with: 'John'

    fill_in "dj[speciality]", with: 'Music Specialist'
    fill_in "dj[picture]", with: 'picture.png'
    click_on 'Create Dj'

    visit djs_path
    click_on 'Show this Dj'
    click_on 'Edit this Dj'
    fill_in "dj[dj_id]", with: ''
    click_on 'Update Dj'
    expect(page).to have_content("Netid can't be blank")
  end

  scenario 'valid delete' do
    visit new_dj_path
    fill_in "dj[dj_id]", with: '123'

    fill_in "dj[member_id]", with: 'John'

    fill_in "dj[speciality]", with: 'Music Specialist'
    fill_in "dj[picture]", with: 'picture.png'
    click_on 'Create Dj'

    visit djs_path
    click_on 'Show this Dj'
    click_on 'Delete this Dj'
    expect(page).to have_content('Dj has been successfully deleted')
  end
end
