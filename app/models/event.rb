class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :description, presence: true
  scope :upcoming, -> { where('date >= ?', DateTime.now) }
  scope :past, -> { where('date < ? ', DateTime.now) }
end
