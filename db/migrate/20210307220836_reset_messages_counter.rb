class ResetMessagesCounter < ActiveRecord::Migration[6.0]
  def up
    Chat.all.each do |chat|
        Chat.reset_counters(chat.id, :messages)
        end
  end
   
     def down
   
        # no rollback needed
   
     end
end
