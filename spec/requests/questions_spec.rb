require 'rails_helper'

describe 'Questions API', type: :request do 
  describe 'GET /questions' do
    before do 
      FactoryBot.create(:question, question: 'This is a test question', image0: 'testq0.jpg', image1: 'testq1.jpg', image2: 'testq2.jpg', image3: 'testq3.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', description0: 'This is description0', description1: 'This is description1', description2: 'This is description2', description3: 'This is description3', answer0: 'Option0', answer1: 'Option1', answer2: 'Option2', answer3: 'Option3')
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
        post '/api/v1/questions', params: { question: {question: 'This is a test question for Post/Create endpoint', image0: 'testq0.jpg', image1: 'testq1.jpg', image2: 'testq2.jpg', image3: 'testq3.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', description0: 'This is description0', description1: 'This is description1', description2: 'This is description2', description3: 'This is description3', answer0: 'Option0', answer1: 'Option1', answer2: 'Option2', answer3: 'Option3'}}
      }.to change { Question.count }.from(0).to(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /questions/:id' do 
    let!(:question) { FactoryBot.create(:question, question: 'This is a delete test question', image0: 'testq0.jpg', image1: 'testq1.jpg', image2: 'testq2.jpg', image3: 'testq3.jpg', option0: 'Option0', option1: 'Option1', option2: 'Option2', option3: 'Option3', description0: 'This is description0', description1: 'This is description1', description2: 'This is description2', description3: 'This is description3') }
    
    it 'deletes a question' do 
      expect {
        delete "/api/v1/questions/#{question.id}"
      }.to change { Question.count }.from(1).to(0)

      expect(response).to have_http_status(:no_content)
    end
  end
end