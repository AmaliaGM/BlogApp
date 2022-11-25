require 'rails_helper'

RSpec.describe Comment, type: :model do
  User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
  post = Post.create(author_id: 1, title: 'Hello', text: 'This is my first post')

  comment = Comment.create(post_id: post.id, author_id: 1, text: 'See ya!')
  context 'validations should be working and' do
    it 'should have a relationship => comment belongs to an user' do # should have a valid post_id
      expect(comment.author.name).to eql('Tom')
      expect(comment.author_id).to be_a(Integer)
      comment.author_id = 3
      expect(comment).to_not be_valid
      comment.author_id = 'Susan'
      expect(comment).to_not be_valid
    end
  end
end
