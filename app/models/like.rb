class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, counter_cache: :likes_counter
  def update_likes_counter
    likes.increment!(:likes_counter)
  end
end
