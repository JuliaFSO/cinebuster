class Showtime < ApplicationRecord
  belongs_to :user
  has_one :ticket 
  has_many :movies, through: :tickets

  validates :session_time, :price, presence: true
  validates :room, presence: true, uniqueness: { scope: :session_time}

end
