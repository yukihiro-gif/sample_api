class Like < ApplicationRecord
  has_many :todolists
  has_many :useres
end
