class ResetChatsCounter < ActiveRecord::Migration[6.0]
  def up
    Application.all.each do |app|
        Application.reset_counters(app.token, :chats)
        end
  end
   
     def down
   
        # no rollback needed
   
     end
   
  
end
