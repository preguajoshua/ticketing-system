class Api::V1::TicketsController < ApplicationController
  before_action :set_event

  def index
    @tickets = @event.tickets
    render json: @tickets
  end

  def show
    @ticket = @event.tickets.find(params[:id])
    if(@ticket)
      render json: @ticket
    else
      render json: { message: "Ticket Not Found" }
    end
  end

  def create
    @ticket = @event.tickets.new(ticket_params)

    if @ticket.save
      render json: @ticket, status: :created
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  def update
    @ticket = @event.tickets.find(params[:id])

    if @ticket.update(ticket_params)
      render json: @ticket
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket = @event.tickets.find(params[:id])
    @ticket.destroy
    head :no_content
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def ticket_params
    params.require(:ticket).permit(:ticket_type, :quantity, :price_cents)
  end
end
