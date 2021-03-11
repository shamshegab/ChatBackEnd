class Indecies < ActiveRecord::Migration[6.0]
  def change
    add_index :applications, :token
    add_index :chat_members, :chat_number
   
  end
end
