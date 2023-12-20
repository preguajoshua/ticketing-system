class Api::V1::EventsController < ApplicationController
    before_action :set_event, only: [:show, :update, :destroy]
  
    # GET /api/v1/events
    def index
      @events = Event.all
      render json: @events
    end
  
    # GET /api/v1/events/:id
    def show
      render json: @event
    end
  
    # POST /api/v1/events
    def create
      @event = Event.new(event_params)
  
      if @event.save
        render json: @event, status: :created
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    end
  
    # PUT /api/v1/events/:id
    def update
      if @event.update(event_params)
        render json: @event
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/v1/events/:id
    def destroy
      @event.destroy
      head :no_content
    end
  
    private
  
    def set_event
      @event = Event.find(params[:id])
    end
  
    def event_params
      params.require(:event).permit(:name, :description, :start_date, :end_date)
    end
end  