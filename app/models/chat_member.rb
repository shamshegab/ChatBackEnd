# == Schema Information
#
# Table name: chat_members
#
#  id             :bigint           not null, primary key
#  chat_id        :bigint           not null
#  chat_number    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  application_id :integer
#
class ChatMember < ApplicationRecord
  belongs_to :chat
  belongs_to :application, counter_cache: :chats_count
  
  validates :chat_number, presence: true 
end
