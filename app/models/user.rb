class User < ApplicationRecord
  has_many :todolists, through: :likes
end
