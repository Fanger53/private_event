class User < ApplicationRecord
  has_many :attendances
  has_many :events
  has_many :attended_events, through: :attendances, source: :event
  validates :username, presence: true, uniqueness: true
end
