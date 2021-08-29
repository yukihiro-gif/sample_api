class CreateTagArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_articles do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
