class Member < ApplicationRecord
    # phone and shirt columns can be null so not included
    validates :netid, :firstname, :lastname, :uin, :email, presence: true
end
