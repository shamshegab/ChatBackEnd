class ChangeCounter < ActiveRecord::Migration[6.0]
  def change
    change_column :applications, :chats_count, :integer, :default => 0
    #Ex:- :default =>''
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
