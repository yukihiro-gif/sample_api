class CreateTodolists < ActiveRecord::Migration[5.2]
  def change
    create_table :todolists do |t|
      t.string :name
      t.string :text
      t.timestamps
    end
  end
end
