# frozen_string_literal: true

# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Member, type: :model do
     subject do
          described_class.new(netid: '123',
                              firstname: 'John',
                              lastname: 'Appleseed',
                              uin: '123456789',
                              email: 'email@email.com',
                              phone: '123456789',
                              strikes: '1')
     end

     # SPRINT 3
     it 'is not valid without valid strikes' do
          subject.strikes = '4'
          expect(subject).not_to be_valid
     end

     it 'is not valid without valid phone' do
          subject.email = '1233d1234'
          expect(subject).not_to be_valid
     end

     it 'is not valid without valid email' do
          subject.email = 'invalid'
          expect(subject).not_to be_valid
     end
     # END SPRINT 3

     it 'is valid with valid attributes' do
          expect(subject).to be_valid
     end

     it 'is not valid without a firstname' do
          subject.firstname = nil
          expect(subject).not_to be_valid
     end

     it 'is not valid without a lastname' do
          subject.lastname = nil
          expect(subject).not_to be_valid
     end

     it 'is not valid without a uin' do
          subject.uin = nil
          expect(subject).not_to be_valid
     end

     it 'is not valid without a email' do
          subject.email = nil
          expect(subject).not_to be_valid
     end
end

RSpec.describe Show, type: :model do
     subject do
          described_class.new(showname: 'name', showdescription: 'name', active: '0', timeslot: 'name')
     end

     # SPRINT 3
     it 'is not valid with valid active' do
          subject.active = '2'
          expect(subject).not_to be_valid
     end

     it 'is valid with valid attributes' do
          expect(subject).to be_valid
     end

     it 'is not valid without a name' do
          subject.showname = nil
          expect(subject).not_to be_valid
     end

     it 'is not valid without a timeslot' do
          subject.timeslot = nil
          expect(subject).not_to be_valid
     end

     it 'is not valid without active' do
          subject.active = nil
          expect(subject).not_to be_valid
     end
end
