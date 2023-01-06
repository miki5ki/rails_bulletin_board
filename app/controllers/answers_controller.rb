class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @question.answers.create(anser_params)
    redirect_to question_path(@question)
  end

  def update
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    redirect_to @question, status: :see_other
  end

  private
  def anser_params
    params.require(:answer).permit(:name, :content)
  end
end
