class CreateProducts < ActiveRecord::Migration[7.0]
  # rubocop:disable Metrics
  def change
    create_table :users do |t|
      t.integer :post_id
      t.integer :author_id
      t.character varying :title
      t.text :text
      t.date :created_at
      t.date :updated_at
      t.integer :comments_counter
      t.integer :likes_count
      t.timestamps
    end
    create_table :likes do |t|
      t.integer :likes_id
      t.integer :author_id
      t.integer :post_id
      t.date :created_at
      t.date :updated_at
    end
    create_table :comments do |t|
      t.integer :comment_id
      t.integer :author_id
      t.integer :post_id
      t.text :text
      t.date :updated_at
      t.date :created_at
    end
    create_table :posts do |t|
      t.integer :post_id
      t.integer :author_id
      t.character varying :title
      t.text :text
      t.date :created_at
      t.date :updated_at
      t.integer :comments_counter
      t.integer :likes_count
    end
  end
  # rubocop:enable Metrics
end
