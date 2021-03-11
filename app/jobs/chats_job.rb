class ChatsJob < ApplicationJob

  def perform(token, recipient)
    Chat.transaction do
      chat = Chat.new()
      if chat.save
          chat_member_1 = Application.find_by(token: token).lock!
          ChatMember.create(application: chat_member_1, chat: chat, chat_number: (chat_member_1.chats_count.to_i + 1))
          chat_member_2 = Application.find_by(token: recipient).lock!
          ChatMember.create(application: chat_member_2, chat: chat, chat_number: (chat_member_2.chats_count + 1))
      end
    end
  end
end
