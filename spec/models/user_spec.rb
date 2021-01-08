require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  context 'validation tests' do
    it ' ensures name not blank' do
      user = User.new(username: '').save
      expect(user).to eql(false)
    end
  end
end
