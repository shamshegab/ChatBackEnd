# == Schema Information
#
# Table name: applications
#
#  token       :string(255)
#  name        :string(255)
#  chats_count :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  id          :bigint           not null, primary key
#
require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
