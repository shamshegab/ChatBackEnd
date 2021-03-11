class CreateMesseges < ActiveRecord::Migration[6.0]
  def change
    create_table :messeges do |t|
      t.belongs_to :chat_member, null: false, foreign_key: true
      t.text :msg
      t.belongs_to :chat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
