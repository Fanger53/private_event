require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  context 'validation tests' do
    it ' ensures name not blank' do
      user = User.new(username: '').save
      expect(user).to eql(false)
    end
    it 'ensures username is unique ' do
      user1 = User.new(username: 'blanco').save
      user2 = User.new(username: 'blanco').save
      expect(user2).to eq(false)
    end
  end
end
