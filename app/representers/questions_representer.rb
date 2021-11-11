class QuestionsRepresenter
  def initialize(questions)
    @questions = questions
  end

  def as_json
    questions.map do |question|
      {
        id: question.id,
        image: question.image,
        question: question.question,
        option0: question.option0,
        option1: question.option1,
        option2: question.option2,
        option3: question.option3,
        hint: question.hint,
        answer: question.answer,
        answer_description: question.answer_description
      }
    end
  end
  
  private

  attr_reader :questions
end