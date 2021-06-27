class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.bigint :chat_id, null: false

      t.timestamps
    end
  end
end
