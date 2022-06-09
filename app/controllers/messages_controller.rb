class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ActionCable.server.broadcast("chatroom-#{@chatroom.id}",
        render_to_string(partial: 'messages/message',
          locals: {message: @message})
      )
      redirect_to chatroom_path(@chatroom)
    else
      render 'chatrooms/show', status: unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
