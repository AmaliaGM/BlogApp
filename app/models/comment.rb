class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id,
  belongs_to :post, counter_cache: :comments_counter, foreign_key: :post_id,
end
