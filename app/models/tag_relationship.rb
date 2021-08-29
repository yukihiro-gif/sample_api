class TagRelationship < ApplicationRecord
  belongs_to :article
  belongs_to :tag_article
end
