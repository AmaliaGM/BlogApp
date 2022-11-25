class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { maximum: 250 }
  validates :comments_counter, length: { minimum: 0 }
  validates :likes_counter, length: { minimum: 0 }

  belongs_to :author, class_name: 'User', counter_cache: :posts_counter
  has_many :comments, foreign_key: :post_id
  has_many :likes, foreign_key: :post_id

  def last_five_comments
    comments.order(created_at: :desc).limit(5)
  end
end
