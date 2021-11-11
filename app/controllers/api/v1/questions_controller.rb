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
        params.require(:question).permit(:question, :image0, :image1, :image2, :image3, :option0, :option1, :option2, :option3, :description0, :description1, :description2, :description3, :answer0, :answer1, :answer2, :answer3) 
      end
    end
  end
end

