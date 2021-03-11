# == Schema Information
#
# Table name: chats
#
#  id             :bigint           not null, primary key
#  messages_count :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class ChatSerializer
  include JSONAPI::Serializer
  set_id {""}

  attribute :chat_number do |object, params|
    object.members.find_by(application_id: params[:application_id]).chat_number
  end
  attribute :messeges_count do |object|
    object.get_messages_count
  end
  attribute :members do |object|
    ChatMemberSerializer.new(object.members)
  end

  attribute :messages do |object|
    MessageSerializer.new(object.messages)
  end
end
