class ChatsController < ApplicationController 
    before_action :set_app
    def index
        chats = @app.chats
        render json: ChatsSerializer.new(chats,{params: {application_id: @app.id}})
    end

    def create
        ChatsJob.perform_later(chat_params[:token],chat_params[:recipient])     
        render json: "your chat is being created"
    end

    def show
        chat = @app.chat_members.find_by(chat_number: chat_params[:chat]).chat
        if chat.present?
            render json: ChatSerializer.new(chat,{params: {application_id: @app.id}})
        else
            render json: "Chat number is invalid", status: 404
        end
    end

    private 
    def set_app
        @app = Application.find_by(token: chat_params[:token])
        if @app.blank?
            render json: "Token is invalid", status: 404
        end
    end

    def chat_params
        params.permit(:token, :chat, :recipient)
    end

end