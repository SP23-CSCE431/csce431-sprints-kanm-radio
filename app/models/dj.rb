# frozen_string_literal: true

class Dj < ApplicationRecord
     # dj and member have 1:1 relationship
     belongs_to :member
end
