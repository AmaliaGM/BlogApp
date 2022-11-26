class User < ApplicationRecord
  validates :name, presence: true
  validates :posts_counter, length: { minimum: 0 }

  has_many :comments, foreign_key: :author_id
  has_many :posts, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id

  def recent_post
    posts.order('created_at Desc').limit(3)
  end
end
