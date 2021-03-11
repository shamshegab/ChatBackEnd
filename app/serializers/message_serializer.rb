class MessageSerializer
  include JSONAPI::Serializer
  set_id {""}
  attribute :message_number
  attribute :msg, :created_at
  attribute :sender_name do |message|
    message.chat_member.application.name
  end

  attribute :sender_token do |message|
    message.chat_member.application.token
  end
end
