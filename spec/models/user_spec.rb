require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.create(name: 'Lilly', photo: 'https://photoUrl.com', bio: 'Teacher from Mexico.')

  context 'User is created with proper key and values, passes all validations and it ' do
    it 'should have a key name = Lilly' do
      expect(user.name).to eql('Lilly')
    end
    it 'should have a key photo = https://photoUrl.com' do
      expect(user.photo).to eql('https://photoUrl.com')
    end
    it 'should have a key bio = Teacher from Mexico.' do
      expect(user.bio).to eql('Teacher from Mexico.')
    end
  end
end
