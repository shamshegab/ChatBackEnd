class ChatsSerializer
  include JSONAPI::Serializer
  set_id {""}

  attribute :created_at
  attribute :messeges_count do |object|
    object.get_messages_count
  end
  attribute :chat_number do |object, params|
    object.members.find_by(application_id: params[:application_id]).chat_number
  end
end
