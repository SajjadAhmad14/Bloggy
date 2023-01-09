class Comment < ApplicationRecord
  belongs_to :user, foreign_key: :author_id, class_name: 'User'
  belongs_to :post

  def update_comments_counter
    Comment.count.increment!
  end
end
