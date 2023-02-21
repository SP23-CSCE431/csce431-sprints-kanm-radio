class Member < ApplicationRecord
    has_many :shows, through: :show_hosts
    has_many :show_hosts, dependent: :destroy

    # phone and shirt columns can be null so not included
    validates :netid, :firstname, :lastname, :uin, :email, presence: true
end
