class Show < ApplicationRecord
     has_many :members, through: :show_hosts
     has_many :show_hosts

     validates :showname, presence: true
end
