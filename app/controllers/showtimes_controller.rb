class ShowtimesController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :index, :show ]

    def index
      @showtimes = Showtime.all
    end

    def new
      @showtime = Showtime.new
    end

    def show
      @showtime = Showtime.find(params[:id])
    end

    def create
      @showtime = Showtime.new(showtime_params)
      @showtime.user = current_user
      if @showtime.save
        redirect_to @showtime
      else
        render :new
      end
    end
    
   private

   def showtime_params
      params.require(:showtime).permit(:session_time, :room, :price)
   end
end
