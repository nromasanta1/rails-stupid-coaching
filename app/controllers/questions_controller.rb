class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = [ "Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!" ]
    @search = params[:question]

    # If the message is I am going to work, the coach will answer Great!
    if @search == "I am going to work"
      @answers = @answers[0]

    elsif
      @search.ends_with?("?")
      @answers = @answers[1]
    else
      @answers = @answers[2]
    end
  end
end
