class CreateChatMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :chat_members do |t|
      t.integer :application_id
      t.belongs_to :chat, null: false, foreign_key: true
      t.integer :chat_number

      t.timestamps
    end
  end
end
