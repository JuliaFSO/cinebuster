class Showtime < ApplicationRecord
  belongs_to :user
  has_one :ticket 
  has_many :movies, through: :tickets
end
