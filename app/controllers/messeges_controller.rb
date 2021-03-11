class MessegesController < ApplicationController
    before_action :set_app, only: [:add_message, :search_message]
    def search_message
        chat= @app.chat_members.find_by(chat_number: messege_params[:chat]).chat
        search_result = Elasticsearch::Model.search(
            messege_params[:query].to_s, [Messege]
                    ).records.records
        
        render json: MessageSerializer.new(search_result.select{|msg| msg[:chat_id] == chat.id})
    end

    def add_message
        MessegesWorkerJob.perform_later(@app.id, messege_params[:chat],messege_params[:msg])
        render json: "Your message is being sent"
    end


    private 
    def set_app
        @app = Application.find_by(token: messege_params[:token])
        if @app.blank?
            render json: "Token is invalid", status: 404
        end
    end

    def messege_params
        params.permit(:token, :chat, :msg, :query)
    end

end