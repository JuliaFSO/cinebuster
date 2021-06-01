class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
  end

  def create
  end
end
