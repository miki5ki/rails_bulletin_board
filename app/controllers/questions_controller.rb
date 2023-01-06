class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to @question
  end


  def edit
  end

  def update
  end

  def index
  end

  def show
  end

  def destroy
  end

  private 
  def question_params
    params.require(:question).permit(:title, :content)
  end
end
