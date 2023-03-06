# frozen_string_literal: true

# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Member, type: :model do
     subject do
          described_class.new(netid: '123',
                              firstname: 'John',
                              lastname: 'Appleseed',
                              uin: '123456789',
                              email: 'email@email.com')
     end

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
          described_class.new(showname: 'name', showdescription: 'name', active: 'name', timeslot: 'name')
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
