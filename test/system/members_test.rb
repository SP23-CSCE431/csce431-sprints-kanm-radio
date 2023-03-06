# frozen_string_literal: true

require 'application_system_test_case'

class MembersTest < ApplicationSystemTestCase
     setup do
          @member = members(:one)
     end

     test 'visiting the index' do
          visit members_url
          assert_selector 'h1', text: 'Members'
     end

     test 'should create member' do
          visit members_url
          click_on 'New member'

          fill_in 'Email', with: @member.email
          fill_in 'Firstname', with: @member.firstname
          fill_in 'Lastname', with: @member.lastname
          fill_in 'Netid', with: @member.netid
          fill_in 'Phone', with: @member.phone
          fill_in 'Points', with: @member.points
          fill_in 'Shirt', with: @member.shirt
          fill_in 'Strikes', with: @member.strikes
          fill_in 'Uin', with: @member.uin
          click_on 'Create Member'

          assert_text 'Member was successfully created'
          click_on 'Back'
     end

     test 'should update Member' do
          visit member_url(@member)
          click_on 'Edit this member', match: :first

          fill_in 'Email', with: @member.email
          fill_in 'Firstname', with: @member.firstname
          fill_in 'Lastname', with: @member.lastname
          fill_in 'Netid', with: @member.netid
          fill_in 'Phone', with: @member.phone
          fill_in 'Points', with: @member.points
          fill_in 'Shirt', with: @member.shirt
          fill_in 'Strikes', with: @member.strikes
          fill_in 'Uin', with: @member.uin
          click_on 'Update Member'

          assert_text 'Member was successfully updated'
          click_on 'Back'
     end

     test 'should destroy Member' do
          visit member_url(@member)
          click_on 'Destroy this member', match: :first

          assert_text 'Member was successfully destroyed'
     end
end
