require 'rails_helper'

describe 'Questions API', type: :request do 
  describe 'GET /questions' do
    before do 
      FactoryBot.create(:question, question: 'This is a test question',image: 'testq.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', answer: 'This is the answer', hint: 'This is a hint', answer_description: 'This is the answer description') 
    end

    it 'returns all questions' do 
      get '/api/v1/questions'
      
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'POST /questions' do 
    it 'create new question' do 
      expect {
        post '/api/v1/questions', params: { question: {question: 'This is a test question for Post/Create endpoint', image: 'testq.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', answer: 'This is the answer', hint: 'This is a hint', answer_description: 'This is the answer description'} }
      }.to change { Question.count }.from(0).to(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /questions/:id' do 
    let!(:question) { FactoryBot.create(:question, question: 'This is a delete test question', image: 'testq.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', answer: 'This is the answer', hint: 'This is a hint', answer_description: 'This is the answer description') }
    
    it 'deletes a question' do 
      expect {
        delete "/api/v1/questions/#{question.id}"
      }.to change { Question.count }.from(1).to(0)

      expect(response).to have_http_status(:no_content)
    end
  end
end