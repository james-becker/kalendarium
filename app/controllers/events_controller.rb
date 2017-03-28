class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      p "Event saved!"
      redirect_to calendar_path
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
