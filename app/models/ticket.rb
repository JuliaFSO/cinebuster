class Ticket < ApplicationRecord
  belongs_to :showtime
  belongs_to :user
  belongs_to :movie
end
