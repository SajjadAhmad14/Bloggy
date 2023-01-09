class Like < ApplicationRecord
  belongs_to :user, foreign_key: :author_id, class_name: 'User'
  belongs_to :post

  def update_likes_counter
    Like.count.increment!
  end
end
