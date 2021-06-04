class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @showtimes = Showtime.where(available: true).sample(4)
  end
end
