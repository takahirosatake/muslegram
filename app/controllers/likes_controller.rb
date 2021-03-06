class LikesController < ApplicationController
  protect_from_forgery except: [:create, :destroy]
  before_action :authenticate_user!

  def index
    @user = User.find(params[:user_id])
    @messages = @user.likes.order(created_at: "DESC").map(&:message)
  end

  def create
    @message = Message.find(params[:message_id])
    @user = current_user.like(@message)
    render 'likes/create.js.erb'
  end

  def destroy
    @message = current_user.likes.find_by(message_id: params[:message_id]).message
    @user = current_user.unlike(@message)
    respond_to do |format|
      format.html { redirect_to @message }
      format.js
    end
  end
end
