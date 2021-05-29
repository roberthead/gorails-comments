class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_rich_text :body
end
