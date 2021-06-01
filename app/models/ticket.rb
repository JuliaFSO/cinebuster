class Ticket < ApplicationRecord
  belongs_to :showtime
  belongs_to :user
  belongs_to :movie

  validates :number_people, numericality: { only_integer: true, :greater_than_or_equal_to 20, :less_than_or_equal_to 50 }

end
