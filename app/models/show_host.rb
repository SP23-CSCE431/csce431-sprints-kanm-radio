class ShowHost < ApplicationRecord
    #show host has one show and one member
    belongs_to :show
    belongs_to :member
end
