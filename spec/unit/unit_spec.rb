# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Member, type: :model do
  subject do
    described_class.new(netid: "123",
                        firstname: "John",
                        lastname: "Appleseed",
                        uin: "123456789",
                        email: "email@email.com")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.netid = nil
    expect(subject).not_to be_valid
  end
end     