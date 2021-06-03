class TicketsController < ApplicationController
  def index
    @tickets = Ticket.where(user_id: current_user)
  end

  def show
    @ticket = Ticket.find(params[:id])
    @movie = @ticket.movie
  end

  def create
    @showtime = Showtime.find(params[:showtime_id])
    @ticket = Ticket.new(ticket_params)
    @ticket.showtime = @showtime
    @ticket.user = current_user
    if @ticket.save 
      redirect_to @ticket
      @showtime.available = false 
      @showtime.save      
    else
      flash[:notice] = @ticket.errors.full_messages.to_sentence unless @ticket.save
      redirect_to @showtime
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:number_people, :movie_id)
  end
end
