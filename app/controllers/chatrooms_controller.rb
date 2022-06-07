class ChatroomsController < ApplicationController
  # route controller view
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
