# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Events', type: :feature do
  describe 'new event page' do
    it 'Loads the right content' do
      visit new_event_path
      expect(page).to have_content('')
    end
  end
end
