require 'rails_helper'

RSpec.describe 'Post' do
  user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
  post = Post.create(author_id: user.id, title: 'Hello', text: 'This is my first post')

  context 'is created with proper key and values, passes all validations and it' do
    it 'should have a key "title" = Hello' do
      expect(post.title).to eql('Hello')
    end

    it 'should have a key "text" = This is my first post' do
      expect(post.text).to eql('This is my first post')
    end

    it 'should have a title = "Hello"' do
      expect(post.title).to eql('Hello')
    end
  end
end
