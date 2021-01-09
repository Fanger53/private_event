require 'rails_helper'

RSpec.describe 'users/new', type: :view do
  describe 'create users template' do
    it 'renders the sign in page' do
      render
      expect(rendered).to match(/text/)
    end
  end
  it 'renders the HTML template' do
    render
    expect(rendered).to match 'username'
  end
end
