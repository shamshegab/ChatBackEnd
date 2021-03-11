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
require 'test_helper'

class ChatMemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
