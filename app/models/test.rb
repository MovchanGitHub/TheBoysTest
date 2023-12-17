class Test < ApplicationRecord
    belongs_to :genre

    validates :name, presence: true
    validates :code_word, presence: false
    validates :description, presence: true
    validates :genre, presence: true
end
