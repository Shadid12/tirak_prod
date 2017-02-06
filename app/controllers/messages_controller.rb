class MessagesController < ApplicationController
    before_action :authenticate_user!
    before_action :get_messages
    
    def index
        @message = Message.new
    end
    
    def create
        message = current_user.messages.build(message_params)
        if message.save
          ActionCable.server.broadcast 'room_channel',
                                   content:  message.content,
                                   username: message.user.first_name
          head :ok
        else
          render 'index'
        end
    end
    
    private 
    
    def get_messages
        @messages = Message.for_display
    end
    
    def message_params
      params.require(:message).permit(:content)
    end
    
end
