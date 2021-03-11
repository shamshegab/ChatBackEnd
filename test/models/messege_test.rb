# == Schema Information
#
# Table name: messeges
#
#  id             :bigint           not null, primary key
#  chat_member_id :bigint           not null
#  msg            :text(65535)
#  chat_id        :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'test_helper'

class MessegeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
