class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @showtimes = Showtime.where(available: true).sample(4)
    @movies = Movie.sample(6)
  end
end
