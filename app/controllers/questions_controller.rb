class QuestionsController < ApplicationController

  def ask
  end

  def answer

    @questions = params[:question]
    if @questions == 'I am going to work'
      @answer ='Great'
    elsif @questions.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end
