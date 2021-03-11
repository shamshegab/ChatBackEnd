class ChangeChatsMemberForignKey < ActiveRecord::Migration[6.0]
  def change
    
    
    change_column :chat_members, :application_id, :integer, references: :application
   
  end
end
