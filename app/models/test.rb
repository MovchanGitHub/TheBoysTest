class Test < ApplicationRecord
    belongs_to :genre
    has_many :questions, dependent: :destroy

    accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

    validates :name, presence: true
    validates :code_word, presence: true
    validates :description, presence: true
    validates :genre, presence: true

    # Метод для создания теста с вопросами и ответами из переданных параметров
    def self.create_with_questions(params)
      test = create(params.except(:questions_attributes))
      test.update(updated_at: Time.now, created_at: Time.now)

      params[:questions_attributes].each do |question_params|
        test.questions.create(question_params)
      end

      test
    end
end
