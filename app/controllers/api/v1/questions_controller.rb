module Api
  module V1
    class QuestionsController < ApplicationController

      include ActionController::HttpAuthentication::Token

      before_action :authenticate_user, only: [:create, :destroy]

      def index
        questions = Question.limit(params[:limit]).offset(params[:offset])

        render json: QuestionsRepresenter.new(questions).as_json
      end

      def create
        question = Question.new(question_params)

        if question.save
          render json: QuestionRepresenter.new(question).as_json, status: :created 
        else
          render json: question.errors, status: :unprocessable_entity
        end
      end

      def destroy 
        Question.find(params[:id]).destroy!
        head :no_content 
      end

      private

      def authenticate_user 
        token, _options = token_and_options(request)
        user_id = AuthenticationTokenService.decode(token)
        User.find(user_id)
      rescue ActiveRecord::RecordNotFound, JWT::DecodeError
        render status: :unauthorized
      end

      def question_params
        params.require(:question).permit(:question, :image, :option0, :option1, :option2, :option3, :answer, :hint, :answer_description, :imagestorage) 
      end
    end
  end
end

