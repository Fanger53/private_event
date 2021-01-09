require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  context 'validation tests' do
    it ' ensures name not blank' do
      event = Event.new(name: '', location: 'koutaba', date: '2021-01-09 11:57:00 UTC', description: 'dancing').save
      expect(event).to eql(false)
    end
  end

  it ' ensures name not blank' do
    event = Event.new(name: 'event 1', location: 'koutaba', date: '2021-01-09 11:57:00 UTC', description: '').save
    expect(event).to eql(false)
  end
  it ' ensures name not blank' do
    event = Event.new(name: 'event 1', location: '', date: '2021-01-09 11:57:00 UTC', description: '').save
    expect(event).to eql(false)
  end
  it ' ensures name not blank' do
    event = Event.new(name: 'event 1', location: 'koutaba', date: '', description: '').save
    expect(event).to eql(false)
  end
end
