class TagArticle < ApplicationRecord
  has_many :tab_relationships, dependent: :destroy
  has_many :articles, through: :tag_relationships
end
