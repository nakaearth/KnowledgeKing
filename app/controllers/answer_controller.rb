class AnswerController < ApplicationController
  def new
    @answer=Answer.new
    @answer.knowledge_id=params[:knowledge_id]
  end

  def create
  end
end
