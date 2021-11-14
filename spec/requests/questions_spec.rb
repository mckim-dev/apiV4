require 'rails_helper'

describe 'Questions API', type: :request do 
  describe 'GET /questions' do
    before do 
      FactoryBot.create(:question, question: 'This is a test question', image: 'testq.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', answer: 'This is the answer', hint: 'This is a hint', answer_description: 'This is the answer description') 
      FactoryBot.create(:question, question: 'This is a 2nd test question', image: 'testq2.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', answer: 'This is the 2nd answer', hint: 'This is a 2nd hint', answer_description: 'This is the 2nd answer description') 
    end

    it 'returns all questions' do 
      get '/api/v1/questions'
      
      expect(response).to have_http_status(:success)
      expect(response_body.size).to eq(2)
      expect(response_body).to eq(
        [
          {
            'id' => 1,
            'image' => 'testq.jpg',
            'question' => 'This is a test question',
            'option0' => 'Option0',
            'option1' => 'Option1',
            'option2' => 'Option2',
            'option3' => 'Option3',
            'hint' => 'This is a hint',
            'answer' => 'This is the answer',
            'answer_description' => 'This is the answer description'
          },
          {
            'id' => 2,
            'image' => 'testq2.jpg',
            'question' => 'This is a 2nd test question',
            'option0' => 'Option0',
            'option1' => 'Option1',
            'option2' => 'Option2',
            'option3' => 'Option3',
            'hint' => 'This is a 2nd hint',
            'answer' => 'This is the 2nd answer',
            'answer_description' => 'This is the 2nd answer description'
          },
        ]
      )
    end

    it 'returns a subset of questions based on limit' do
      get '/api/v1/questions', params: { limit: 1 }

      expect(response).to have_http_status(:success)
      expect(response_body.size).to eq(1)
      expect(response_body).to eq(
        [
          {
            'id' => 1,
            'image' => 'testq.jpg',
            'question' => 'This is a test question',
            'option0' => 'Option0',
            'option1' => 'Option1',
            'option2' => 'Option2',
            'option3' => 'Option3',
            'hint' => 'This is a hint',
            'answer' => 'This is the answer',
            'answer_description' => 'This is the answer description'
          }
        ]
      )
    end

    it 'returns a subset of questions based on a limit and offset' do
      get '/api/v1/questions', params: { limit: 1, offset: 1 }

      expect(response).to have_http_status(:success)
      expect(response_body.size).to eq(1)
      expect(response_body).to eq(
        [
          {
            'id' => 2,
            'image' => 'testq2.jpg',
            'question' => 'This is a 2nd test question',
            'option0' => 'Option0',
            'option1' => 'Option1',
            'option2' => 'Option2',
            'option3' => 'Option3',
            'hint' => 'This is a 2nd hint',
            'answer' => 'This is the 2nd answer',
            'answer_description' => 'This is the 2nd answer description'
          }
        ]
      )
    end
  end

  describe 'POST /questions' do     
    let!(:user) {FactoryBot.create(:user, password: 'Password2') }

    it 'create new question' do 
      expect {
        post '/api/v1/questions', params: { 
          question: {question: 'This is a test question for Post/Create endpoint', image: 'testq.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', answer: 'This is the answer', hint: 'This is a hint', answer_description: 'This is the answer description'} 
        }, headers: { "Authorization" => "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiMSJ9.M1vu6qDej7HzuSxcfbE6KAMekNUXB3EWtxwS0pg4UGg"} 
      }.to change { Question.count }.from(0).to(1)

      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)).to eq(
        {
          'id' => 1,
          'image' => 'testq.jpg',
          'question' => 'This is a test question for Post/Create endpoint',
          'option0' => 'Option0',
          'option1' => 'Option1',
          'option2' => 'Option2',
          'option3' => 'Option3',
          'hint' => 'This is a hint',
          'answer' => 'This is the answer',
          'answer_description' => 'This is the answer description'
        }
      )
    end

    context 'missing authorization header' do
      it 'returns a 401' do
        post '/api/v1/questions', params: {}, headers: {}

        expect(response).to have_http_status(:unauthorized)
      end
    end
  end

  describe 'DELETE /questions/:id' do 
    let!(:question) { FactoryBot.create(:question, question: 'This is a delete test question', image: 'testq.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', answer: 'This is the answer', hint: 'This is a hint', answer_description: 'This is the answer description') }
    let!(:user) {FactoryBot.create(:user, password: 'Password2') }

    it 'deletes a question' do 
      expect {
        delete "/api/v1/questions/#{question.id}",
        headers: { "Authorization" => "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiMSJ9.M1vu6qDej7HzuSxcfbE6KAMekNUXB3EWtxwS0pg4UGg"} 
      }.to change { Question.count }.from(1).to(0)

      expect(response).to have_http_status(:no_content)
    end
  end
end