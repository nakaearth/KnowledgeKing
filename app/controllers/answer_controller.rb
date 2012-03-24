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
    @anwser.user_id=session[:user_id]
    respond_to do |format|
      if @answer.save
        format.html {redirect_to @answer, notice: 'answer was success'}
        format.json { render json: @answer, satus: :created, location: @answer} 
      else
        format.html {render action: "new" }
        format.json {render json: @knowledge.errors, status: :unprocessable}
      end
    end
  end
end
