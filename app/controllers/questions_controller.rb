class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    p params
    @question = Question.new(question_params)
    @question.save
    redirect_to @question
  end


  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to @question
  end

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private 
  def question_params
    params.require(:question).permit(:title, :content, :solved_status)
  end
end
