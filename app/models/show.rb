# frozen_string_literal: true

class Show < ApplicationRecord
     has_many :members, through: :show_hosts
     # whenever a show gets deleted, the respective show gets deleted as well
     has_many :show_hosts, dependent: :destroy

     # show name should be unique
     validates :showname, uniqueness: true
     # show name, active, and time slot are required
     validates :showname, :active, :timeslot, presence: true

     # false is 0; true is 1
     validates :active, inclusion: { in: [0, 1], message: 'must be either 0 or 1' }
end
