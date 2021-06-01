class ShowtimesController < ApplicationController
    def index
      @showtimes = Showtime.all
    end

    def show
      # @showtimes = Showtime.find(params[:id])
    end

    def new
      # @showtime = Showtime.new
    end

    def create
      # @showtime = Showtime.new(showtime_params)
      #   redirect_to @showtime, notice: 'Showtime was successfully created.'
      # else
      #   render :new
      # end
    end
  
   private

   def showtime_params
      # params.require(:showtimes).permit(:session_time, :room, :price)
    end
end
