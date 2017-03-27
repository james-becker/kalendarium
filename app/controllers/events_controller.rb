class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def new
    @event = Event.new
    render partial: 'new'
  end

  def create
    #add a new boat, and become its owner
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def show
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :calendar_id, :start_time, :end_time)
  end

end
