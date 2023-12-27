class Tag < ApplicationRecord
    has_many :tagstests
    has_many :test, through: :tagstests
end
