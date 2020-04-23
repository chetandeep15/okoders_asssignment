class QuestionsController < ApplicationController

  before_action :find_question, only: :show

  def index
    @questions = Question.all
  end

  def show
  end

  private
  def find_question
    @question = Question.find_by(id: params[:id]) if params[:id]
    unless @question.present?
      redirect_to root_path, alert: "Question not Found"
    end
  end
end