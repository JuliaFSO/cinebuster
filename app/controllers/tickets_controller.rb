class TicketsController < ApplicationController
  def index
    @tickets = Tickets.all
  end

  def show
  end

  def new
  end

  def create
  end
end
