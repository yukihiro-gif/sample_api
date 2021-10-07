class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :todolist, null: false, foreign_key: true
      t.index [:user_id, :todolist_id], unique: true
      t.timestamps
    end
  end
end
