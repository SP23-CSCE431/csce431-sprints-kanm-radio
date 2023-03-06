# frozen_string_literal: true

class Officer < ApplicationRecord
     # member and officer have a 1:1 relationship
     belongs_to :member
end
