class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :topic_id
      t.string :comment
      t.string :message

      t.timestamps
    end
  end
end
