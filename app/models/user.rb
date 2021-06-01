class User < ApplicationRecord
  has_many :showtimes
  has_many :tickets

  validates :session_time, :room, :price, presence: true

end
