# == Schema Information
#
# Table name: chat_members
#
#  id             :bigint           not null, primary key
#  application_id :integer
#  chat_id        :bigint           not null
#  chat_number    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class ChatMemberSerializer
  include JSONAPI::Serializer
  set_id {""}
  attribute :member_name do |member|
    member.application.name
  end

  attribute :member_token do |member|
    member.application.token
  end
end
