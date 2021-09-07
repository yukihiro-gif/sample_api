class Article < ApplicationRecord
  has_many :tag_relationships, dependent: :destroy
  has_many :tag_articles, through: :tag_relationships


  def save_tags(savearticle_tags)
    savearticle_tags.each do |new_name|
    article_tag = TagArticle.find_or_create_by(name: new_name)
    self.tag_articles << article_tag
    end
  end

  def self.search(word)
    where(["name like? OR text like?", "%#{word}%", "%#{word}%"])
  end

end
