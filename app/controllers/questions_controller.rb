class QuestionsController < ApplicationController
  def ask
  end

STOP_MESSAGE = "I am going to work right now!"
  def answer
    @question = params[:question]
    @response = if @question == STOP_MESSAGE || @question == STOP_MESSAGE.upcase
                  "Good job c*nt"
                elsif @question.end_with?("?")
                  "Silly question, get dressed and go to work!"
                else
                  "I don't care, get dressed and go to work!"
                end
  end
end
