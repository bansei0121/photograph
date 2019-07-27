class MessagesController < ApplicationController
  def new
    @message = Message.new
    @message.topic_id = params[:topic_id]
  end 
  
  def create
    @message = current_user.messages.new
    @message.message = params[:message][:message]
    @message.topic_id = params[:message][:topic_id]
    
    if @message.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :index
    end 
  end
end
