# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_secure_password

  has_one :subs_level
end
