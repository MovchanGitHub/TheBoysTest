class Test < ApplicationRecord
    has_many :tagstests
    has_many :tag, through: :tagstests

    validates :name, presence: true
    validates :code_word, presence: false
    validates :description, presence: true
    validates :genre, presence: true

    def self.tagged_with(name)
        Tag.find_by_name!(name).test
    end
end
