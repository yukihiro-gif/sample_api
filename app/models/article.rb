class Article < ApplicationRecord
  has_many :tag_relationships, dependent: :destroy
  has_many :tag_articles, through: :tag_relationships
end
