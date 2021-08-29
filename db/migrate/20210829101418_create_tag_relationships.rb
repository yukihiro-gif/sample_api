class CreateTagRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_relationships do |t|
      t.references :article, foreign_key: true
      t.references :tag_article, foreign_key: true

      t.timestamps
    end
    add_index :tag_relationships, [:article_id, :tag_article_id], unique: true
  end
end
