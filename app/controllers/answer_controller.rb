class AnswerController < ApplicationController
  def show
    @answer=Answer.find(params[:id])
    @knowledges=Knowledge.find(@answer.knowledge_id)
  end

  def new
    @answer=Answer.new
    @answer.knowledge_id=params[:knowledge_id]
  end

  def create
    @answer=Answer.new(params[:answer])
    @answer.user_id=session[:user_id]
    @answer.knowledge_id=params[:knowledge_id]
    unless @answer.save
      render action: "new" 
      render json: @knowledge.errors, status: :unprocessable
    end
  end
end
