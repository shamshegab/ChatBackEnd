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
class Application < ApplicationRecord
    has_secure_token
    has_many :chat_members
    has_many :chats, through: :chat_members

    validates :name, presence: true 
    
    def get_chats_count
        Rails.cache.fetch([cache_key, __method__]) do
            chats_count
        end
    end
end
