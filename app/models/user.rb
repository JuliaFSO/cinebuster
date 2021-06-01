class User < ApplicationRecord
  has_many :showtimes
  has_many :tickets
end
