class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id, class_name: 'Post', dependent: :destroy
  has_many :comments, foreign_key: :author_id, class_name: 'Comment', dependent: :destroy
  has_many :likes, foreign_key: :author_id, class_name: 'Like', dependent: :destroy
  
  def recent_posts
    Post.last(3)
  end
end
