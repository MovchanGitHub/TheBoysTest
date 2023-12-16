class Test < ApplicationRecord
    belongs_to :genre
    has_many :questions, dependent: :destroy

    accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

    validates :name, presence: true
    validates :code_word, presence: true
    validates :description, presence: true
    validates :genre, presence: true
end
