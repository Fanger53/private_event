class User < ApplicationRecord
  has_many :attendances
  has_many :events, dependent: :destroy
  has_many :attended_events, through: :attendances, source: :event, dependent: :destroy
  validates :username, presence: true, uniqueness: true
end
