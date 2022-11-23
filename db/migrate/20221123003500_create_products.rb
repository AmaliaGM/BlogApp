class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo # as photo should be a link to an image not a file
      t.text :bio
      t.integer :posts_counter
      t.timestamps # this will crate uopdated_at and created_at columns
    end

    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :comments_counter
      t.integer :likes_counter
      t.timestamps # this will crate uopdated_at and created_at columns
      t.references :author, foreign_key: { to_table: 'users' } # this will create author_id and a corresponding index  (but students can also add column and index in separate commands)
    end

    create_table :comments do |t|
      t.text :text
      t.timestamps # this will crate uopdated_at and created_at columns
      t.references :author, foreign_key: { to_table: 'users' } # this will create author_id and a corresponding index
      t.references :post, foreign_key: true # this will create post_id and a corresponding index (but students can also add column and index in separate commands)
    end

    create_table :likes do |t|
      t.timestamps # this will crate uopdated_at and created_at columns
      t.references :author, foreign_key: { to_table: 'users' } # this will create author_id and a corresponding index
      t.references :post, foreign_key: true # this will create post_id and a corresponding index (but students can also add column and index in separate commands)
    end
  end
end
