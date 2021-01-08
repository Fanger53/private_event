# frozen_string_literal: true

class Attendance < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :event, class_name: 'Event'

  validates_uniqueness_of :user, scope: :event
end
