require 'rails_helper'

RSpec.feature 'Sessions', type: :feature do
  describe 'new session page' do
    it 'lets the user sign up with valid data' do
      visit signup_path
      fill_in 'Username',	with: 'blanco'
      expect do
        click_on 'Create User'
      end.to change(User, :count).by(1)
    end
  end
end
