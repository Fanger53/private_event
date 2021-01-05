class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user
  validates :name, presence: true
  validates :description, presence: true
end
