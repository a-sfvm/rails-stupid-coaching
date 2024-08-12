class QuestionsController < ApplicationController
  def ask; end

  def answer
    # @coachanswer = "Great!" if params[:question] == "I am going to work"

    if params[:question] == 'I am going to work'
      @coachanswer = 'Great!'
    elsif params[:question].end_with?('?')
      @coachanswer = 'Silly question, get dressed and go to work!'
    else
      @coachanswer = "I don't care, get dressed and go to work!"
    end
  end
end
