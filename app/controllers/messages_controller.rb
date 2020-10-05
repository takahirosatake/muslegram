class MessagesController < ApplicationController

  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all.includes(:user, :youtube)
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    
  end

  # GET /messages/new
  def new 
    @youtube_id = params[:youtube_id]
    @video_id = params[:video_id]
    @channel_title = params[:channel_title]
    @title = params[:title]
    @message = Message.new
  end

  def edit

  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    else
      render :new
    end
  end
  def update
 
  end

  def destroy
    @message.destroy
  
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:title, :explanation).merge(user_id: current_user.id, youtube_id: params[:youtube_id] )
    end
end
