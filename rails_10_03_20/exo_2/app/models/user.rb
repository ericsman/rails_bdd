class User < ApplicationRecord
  has_many :articles
  has_many :commentaires
  has_many :like
end
