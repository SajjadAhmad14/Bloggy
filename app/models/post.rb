class Post < ApplicationRecord
  belongs_to :user, foreign_key: :author_id, class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def update_posts_counter
    Post.count.increment!
  end

  def recent_comments
    Comment.last(5)
  end
end
