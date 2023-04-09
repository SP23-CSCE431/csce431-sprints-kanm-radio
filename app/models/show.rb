# frozen_string_literal: true

class Show < ApplicationRecord
     has_many :members, through: :show_hosts
     # whenever a show gets deleted, the respective show gets deleted as well
     has_many :show_hosts, dependent: :destroy

     # show name should be unique
     validates :showname, uniqueness: true

     validates :showname, :active, :timeslot, presence: true
end
