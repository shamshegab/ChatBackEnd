class AddMessageNumber < ActiveRecord::Migration[6.0]
  def change
    add_column :messeges, :message_number, :integer
    #Ex:- :default =>''
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
