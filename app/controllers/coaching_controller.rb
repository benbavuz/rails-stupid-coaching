class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @coach_answer = coach_answer(@query)
  end

  def ask
  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return "cool bro!"
    elsif your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
