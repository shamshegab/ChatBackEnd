class MessegesWorkerJob < ApplicationJob
  def perform(app_id ,chat_number, msg)
    Application.transaction do
      @app = Application.find(app_id)
      member = @app.chat_members.find_by(chat_number: chat_number)
      @chat = Chat.find(member.chat_id).lock!
      msg = Messege.create(msg: msg, chat_id: member.chat_id, chat_member: member, message_number: (@chat.messages_count.to_i + 1))
    end
  end
end
