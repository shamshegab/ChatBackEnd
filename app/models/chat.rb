# == Schema Information
#
# Table name: chats
#
#  id             :bigint           not null, primary key
#  messages_count :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Chat < ApplicationRecord


    has_many :members, class_name: "ChatMember", foreign_key: "chat_id"
    has_many :messages, class_name: "Messege", foreign_key: "chat_id"



    def get_messages_count
        Rails.cache.fetch([cache_key, __method__]) do
            messages_count
        end
    end
end
