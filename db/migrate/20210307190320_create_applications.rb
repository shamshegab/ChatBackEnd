class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :token
      t.string :name
      t.string :chats_count

      t.timestamps
    end
  end
end
