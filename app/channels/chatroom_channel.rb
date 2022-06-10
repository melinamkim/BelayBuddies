class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom-#{params[:id]}"
  end

  def unsubscribed
  end

end
