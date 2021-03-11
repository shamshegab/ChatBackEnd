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

class Messege < ApplicationRecord
  include Elasticsearch::Model
  include Searchable
  belongs_to :chat_member
  belongs_to :chat, counter_cache: :messages_count
   
  validates :msg, presence: true

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :msg 
    end
  end
 
end
