# frozen_string_literal: true

class Member < ApplicationRecord
     has_many :shows, through: :show_hosts
     # whenever a member gets deleted, the respective show host gets deleted as well
     has_many :show_hosts, dependent: :destroy
     # new officer entity will be one member
     has_one :officer, dependent: :destroy

     # new dj entity will be one member
     has_one :dj, dependent: :destroy

     # phone and shirt columns can be null so not included
     validates :netid, :firstname, :lastname, :uin, :email, presence: true
     # netid and uin should be unique
     validates :netid, uniqueness: true
     validates :uin, uniqueness: true
     # phone number should only contain integers
     validates :phone, format: { with: /\A\d+\z/, message: 'number must be integers only.' }, allow_blank: true
     # email must follow valid format of -> {characters}{@}{characters}{.}{characters}
     validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }

     # strikes should be between 0-3
     validates :strikes, inclusion: { in: [0, 1, 2, 3], message: 'must be between 0-3' }
end
