class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = if params[:query] == 'I am going to work'
                'Great!'
              elsif params[:query].last == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work"
              end
  end
end
