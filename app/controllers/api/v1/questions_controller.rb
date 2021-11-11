module Api
  module V1
    class QuestionsController < ApplicationController
      def index
        render json: Question.all
      end

      def create
        question = Question.new(question_params)

        if question.save
          render json: question, status: :created 
        else
          render json: question.errors, status: :unprocessable_entity
        end
      end

      def destroy 
        Question.find(params[:id]).destroy!
        head :no_content 
      end

      private

      def question_params
        params.require(:question).permit(:question, :image, :option0, :option1, :option2, :option3, :answer, :hint, :answer_description) 
      end
    end
  end
end

