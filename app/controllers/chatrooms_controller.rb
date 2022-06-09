class ChatroomsController < ApplicationController
  # route controller view

  def index
    @chatrooms = current_user.chatrooms
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @chatrooms = Chatroom.all
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.requester = current_user
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render "users/show"
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:receiver_id)
  end
end
