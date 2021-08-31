class Article < ApplicationRecord
  has_many :tag_relationships, dependent: :destroy
  has_many :tag_articles, through: :tag_relationships


  def save_tags(savearticle_tags)
    byebug
    savearticle_tags.each do |new_name|
    article_tag = TagArticle.find_or_create_by(name: new_name)
    self.tags << article_tag
    end
  end
end
