class Movie < ApplicationRecord
  has_many :tickets

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  
end
