# frozen_string_literal: true

class Member < ApplicationRecord
     has_many :shows, through: :show_hosts
     # whenever a member gets deleted, the respective show host gets deleted as well
     has_many :show_hosts, dependent: :destroy
     # new officer entity will be one member
     has_one :officer

     # new dj entity will be one member
     has_one :dj

     # phone and shirt columns can be null so not included
     validates :netid, :firstname, :lastname, :uin, :email, presence: true
end
